package com.atguigu.crowd.mvc.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.crowd.entity.Admin;
import com.atguigu.crowd.entity.Student;
import com.atguigu.crowd.mapper.RoleMapper;
import com.atguigu.crowd.service.api.AdminService;
import com.atguigu.crowd.service.api.RoleService;
import com.atguigu.crowd.util.CrowdUtil;
import com.atguigu.crowd.util.ResultEntity;

@Controller
public class TestHandler {
	
	@Autowired
	private AdminService adminService;
	
	
	@ResponseBody
	@RequestMapping("/send/compose/object.json")
	public ResultEntity<Student> testReceiveComposeObject(@RequestBody Student student,HttpServletRequest request) {
		
		boolean judgeRequestType = CrowdUtil.judgeRequestType(request);
		System.out.println(judgeRequestType);
		
		System.out.println(student);
		return ResultEntity.successWithData(student);
	}
	
	
	@RequestMapping("/send/array/two.html")
	public String testReceiveArrayTwo(@RequestBody List<Integer> array) {
		
		for (Integer num : array) {
			System.out.println("number-->"+num);
		}
		
		return "target";
	}
	
	@RequestMapping("/send/array/one.html")
	public String testReceiveArrayOne(@RequestParam("array[]")List<Integer> array) {
		
		for (Integer num : array) {
			System.out.println("number-->"+num);
		}
		
		return "target";
	}
	
	@RequestMapping("/test/ssm.html")
	public String testSSM(ModelMap modelMap,HttpServletRequest request) {
		
		boolean requestType = CrowdUtil.judgeRequestType(request);
		System.out.println(requestType);
		
		List<Admin> list = adminService.getAll();
		
		modelMap.addAttribute("adminList",list);
		
//		System.out.println(10/0);//模拟异常
		
//		String exception = null;
//		System.out.println(exception.length());//模拟空指针异常
		
		return "target";
	}

}
