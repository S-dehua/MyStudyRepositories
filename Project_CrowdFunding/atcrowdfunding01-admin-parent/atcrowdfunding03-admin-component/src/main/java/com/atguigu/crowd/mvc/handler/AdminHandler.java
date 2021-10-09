package com.atguigu.crowd.mvc.handler;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atguigu.crowd.constant.CrowdConstant;
import com.atguigu.crowd.entity.Admin;
import com.atguigu.crowd.service.api.AdminService;
import com.github.pagehelper.PageInfo;

@Controller
public class AdminHandler {
	
	@Autowired
	private AdminService adminService;
	
	@PreAuthorize("hasAuthority('user:update')")
	@RequestMapping("/admin/update.html")
	public String update(Admin admin,
			@RequestParam("pageNum")Integer pageNum,
			@RequestParam("keyword")String keyword) {
		
		String key = "";
		if (!keyword.isEmpty()) {
			// 解决中文显示异常的问题
			try {
				key = URLEncoder.encode(admin.getUserName(),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		// 执行更新
		adminService.update(admin);
		
		// 页面跳转:回调分页页面
		return "redirect:/admin/get/page.html?pageNum="+pageNum+"&keyword="+key;

		
	}
	
	@PreAuthorize("hasAuthority('user:update')")
	@RequestMapping("/admin/to/edit/page.html")
	public String toEditPage(
			@RequestParam("adminId")Integer adminId,
			ModelMap modelMap) {
		
		// 1.根据adminId查询Admin对象
		Admin admin = adminService.getAdminById(adminId);
		
		// 2.将Admin对象存入模型
		modelMap.addAttribute("admin",admin);
		
		return "admin-edit";
	}
	
	
	@PreAuthorize("hasAuthority('user:save')")
	@RequestMapping("/admin/save.html")
	public String save(Admin admin) {
		
		adminService.saveAdmin(admin);
		
		return "redirect:/admin/get/page.html?pageNum="+Integer.MAX_VALUE;
	}
	
	@PreAuthorize("hasAuthority('user:delete')")
	@RequestMapping("admin/remove/{adminId}/{pageNum}/{keyword}.html")
	public String remove(
			@PathVariable("adminId")Integer adminId,
			@PathVariable("pageNum")Integer pageNum,
			@PathVariable("keyword")String keyword,HttpSession session) {
		
		Admin admin = (Admin) session.getAttribute(CrowdConstant.ATTR_NAME_LOGIN_ADMIN);
		if (Objects.equals(adminId,admin.getId())) {
			throw new RuntimeException(CrowdConstant.MESSAGE_SYSTEM_ERROR_DELETE_YOURSELF);
		}
		
		// 解决中文显示异常的问题
		String key = "";
		try {
			key = URLEncoder.encode(keyword,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 执行删除
		adminService.remove(adminId);
		
		// 页面跳转:回调分页页面
		return "redirect:/admin/get/page.html?pageNum="+pageNum+"&keyword="+key;
	}
	
	
	@RequestMapping("/admin/get/page.html")
	public String getPageInfo(
			@RequestParam(value="keyword",defaultValue = "")String keyword,
			@RequestParam(value="pageNum",defaultValue = "1")Integer pageNum,
			@RequestParam(value="pageSize",defaultValue = "7")Integer pageSize,
			ModelMap modelMap) {
		
		// 调用Service方法获取PageInfo对象
		PageInfo<Admin> pageInfo = adminService.getPageInfo(keyword, pageNum, pageSize);
		
		// 将PageInfo对象存入模型
		modelMap.addAttribute(CrowdConstant.ATTR_NAME_PAGE_INFO,pageInfo);
		return "admin-page";
	}
	
	
	@RequestMapping("/admin/do/logout.html")
	public String doLogout(HttpSession session) {
		
		// 强制Session失效
		session.invalidate();
		
		return "redirect:/admin/to/login/page.html";
	}
	
	
	@RequestMapping("/admin/do/login.html")
	public String doLogin(@RequestParam("loginAcct")String loginAcct,
			@RequestParam("userPwd")String userPwd,
			HttpSession session) {
		
		// 调用Service方法执行登录检查
		// 这个方法如果能返回admin对象说明登录成功，如果账号、密码不正确则抛出异常
		Admin admin = adminService.getAdminByLoginAcct(loginAcct,userPwd);
		
		// 将登录成功返回得admin对象存入Session域
		session.setAttribute(CrowdConstant.ATTR_NAME_LOGIN_ADMIN, admin);
		
		return "redirect:/admin/to/main/page.html";
	}
	

}
