package com.atguigu.crowd.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.atguigu.crowd.constant.CrowdConstant;
import com.atguigu.crowd.entity.po.MemberPO;
import com.atguigu.crowd.service.api.MemberService;
import com.atguigu.crowd.util.ResultEntity;

@RestController
public class MemberProviderHandler {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/save/member/remote")
	public ResultEntity<String> saveMember(@RequestBody MemberPO memberPO){
		
		try {
			memberService.saveMember(memberPO);
			
			return ResultEntity.successWithoutData();
		} catch (Exception e) {
			if (e instanceof DuplicateKeyException) {
				return ResultEntity.failed(CrowdConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
			}
			
			return ResultEntity.failed(e.getMessage());
		}
		
	}
	

	@RequestMapping("/get/memberpo/by/login/acct/remote")
	ResultEntity<MemberPO> getMemberPOByLoginAcctRemote(@RequestParam("loginacct") String loginacct) {

		try {
			// 1.调用本地 Service 完成查询
			MemberPO memberPO = memberService.getMemberPOByLoginAcct(loginacct);
			// 2.如果没有抛异常，那么就返回成功的结果
			return ResultEntity.successWithData(memberPO);
		} catch (Exception e) {
			e.printStackTrace();
			// 3.如果捕获到异常则返回失败的结果
			return ResultEntity.failed(e.getMessage());
		}
	}

}
