package com.atguigu.crowd.handler;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

import javax.imageio.spi.RegisterableService;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.crowd.api.MySQLRemoteService;
import com.atguigu.crowd.api.RedisRemoteService;
import com.atguigu.crowd.constant.CrowdConstant;
import com.atguigu.crowd.entity.po.MemberPO;
import com.atguigu.crowd.entity.vo.MemberLoginVO;
import com.atguigu.crowd.entity.vo.MemberVO;
import com.atguigu.crowd.util.QQMailUtil;
import com.atguigu.crowd.util.ResultEntity;

@Controller
public class MemberHandler {
	
	@Autowired
	private RedisRemoteService redisRemoteService;
	
	@Autowired
	private MySQLRemoteService mySQLRemoteService;
	
	@RequestMapping("/auth/do/member/logout.html")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	@RequestMapping("/auth/do/member/login.html")
	public String login(
			@RequestParam("loginacct")String loginacct,
			@RequestParam("userpswd")String userpswd,
			ModelMap modelMap,
			HttpSession session) {
		
		ResultEntity<MemberPO> resultEntity = mySQLRemoteService.getMemberPOByLoginAcctRemote(loginacct);
		
		if (ResultEntity.FAILED.equals(resultEntity.getResult())) {

			modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE,resultEntity.getMessage());
			
			return "member-login";
		}
		
		MemberPO data = resultEntity.getData();
		
		if (data == null) {
			modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE,CrowdConstant.MESSAGE_LOGIN_FAILED);
			
			return "member-login";
		}
		
		// ????????????
		String userpswdDataBase = data.getUserpswd();
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		boolean matches = passwordEncoder.matches(userpswd, userpswdDataBase);
		
		if (!matches) {
			modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE,resultEntity.getMessage());
			
			return "member-login";
		}
		
		// ??????MemberLoginVO????????????Session
		MemberLoginVO memberLoginVO = new MemberLoginVO(data.getId(), data.getUsername(), data.getEmail());
		session.setAttribute(CrowdConstant.ATTR_NAME_LOGIN_MEMBER, memberLoginVO);
		
		return "redirect:http://www.crowd.com/auth/member/to/center/page.html";
		
	}
	
	
	@RequestMapping("/auth/do/member/register")
	public String register(MemberVO memberVO,ModelMap modelMap) {
		
		// ???????????????????????????
		String email = memberVO.getEmail();
		
		// ???Redis?????????????????????key
		String key = CrowdConstant.REDIS_CODE_PREFIX + email;
		
		// ?????????????????????Key?????????value
		ResultEntity<String> resultEntity = redisRemoteService.getRedisStringValueByKeyRemote(key);
		
		// ??????????????????????????????
		String result = resultEntity.getResult();
		
		if (ResultEntity.FAILED.equals(result)) {
			
			modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, resultEntity.getMessage());
			
			return "member-reg";
		}
		
		if (ResultEntity.SUCCESS.equals(result)) {
			
			String redisCode = resultEntity.getData();
			
			if (redisCode != null) {
				// ???????????????Reids?????????value??????????????????????????????????????????????????? 
				String formCode = memberVO.getCode();
				
				if (Objects.equals(formCode, redisCode)) {
					
					// ??????????????????????????????Redis?????????
					redisRemoteService.removeRedisKeyRemote(key);
					
					// ??????????????????
					BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
					
					String userpswd = memberVO.getUserpswd();
					
					String encode = passwordEncoder.encode(userpswd);
					
					memberVO.setUserpswd(encode);
					
					// ????????????
					MemberPO memberPO = new MemberPO();
					
					BeanUtils.copyProperties(memberVO, memberPO);
					
					ResultEntity<String> saveMemberEntity = mySQLRemoteService.saveMember(memberPO);
					
					if (ResultEntity.FAILED.equals(saveMemberEntity.getResult())) {
						
						modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, saveMemberEntity.getMessage());
						
						return "member-reg";
					}
					
				} else {
					
					modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_CODE_INVALID);
					
					return "member-reg";
					
				}
				
			} else {
				
				modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_CODE_NOT_EXISTS);
				
				return "member-reg";
				
			}
		}
		
		return "redirect:http://www.crowd.com/auth/member/to/login/page.html";
	}
	
	
	@CrossOrigin
	@ResponseBody
	@RequestMapping("/auth/member/send/short/message.json")
	public ResultEntity<String> sendMessage(@RequestParam("email")String email){
		
		if (email.isEmpty()) {
			return ResultEntity.failed("??????????????????! ");
		}
		
		// ??????????????????email??????
		String code = QQMailUtil.sendQQMail(email, 60);
		// ???????????????????????????
		if (code != null) {
			
			String key = CrowdConstant.REDIS_CODE_PREFIX + email;
			
			// ??????????????????????????????????????????Redis
			ResultEntity<String> saveCodeResultEntity = redisRemoteService.setRedisKeyValueRemoteWithTimeout(key , code, 1, TimeUnit.MINUTES);
			System.out.println(saveCodeResultEntity.getResult());
			if (ResultEntity.SUCCESS.equals(saveCodeResultEntity.getResult())) {
				return ResultEntity.successWithoutData();
			} else {
				return ResultEntity.failed("???????????????Redis??????! ");
			}
		} else {
			return ResultEntity.failed("??????????????????! ");
		}
		
	}

}
