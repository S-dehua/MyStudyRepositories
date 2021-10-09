package com.atguigu.crowd.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CrowdWebMvcConfig implements WebMvcConfigurer{

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		
		// 浏览器访问的地址
		String urlPath = "auth/member/to/reg/page.html";
		String urlPath1 = "auth/member/to/login/page.html";
		String urlPath2 = "auth/member/to/center/page.html";
		String urlPath3 = "member/my/crowd.html";
		
		// 目标视图的名称
		String viewName = "member-reg";
		String viewName1 = "member-login";
		String viewName2 = "member-center";
		String viewName3 = "member-crowd";
		
		// 注册登记
		registry.addViewController(urlPath).setViewName(viewName);
		registry.addViewController(urlPath1).setViewName(viewName1);
		registry.addViewController(urlPath2).setViewName(viewName2);
		registry.addViewController(urlPath3).setViewName(viewName3);
		
	}
	
}
