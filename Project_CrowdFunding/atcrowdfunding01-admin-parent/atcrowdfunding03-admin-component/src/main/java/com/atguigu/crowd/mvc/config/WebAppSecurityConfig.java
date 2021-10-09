package com.atguigu.crowd.mvc.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;

import com.atguigu.crowd.constant.CrowdConstant;

// 表示当前类是一个配置类
@Configuration
// 启动Web环境下权限控制功能
@EnableWebSecurity
// 启用全局方法权限控制
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebAppSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	public BCryptPasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder builder) throws Exception {

		// 临时使用内存版登录的模式测试代码
		// builder.inMemoryAuthentication().withUser("tom").password("123123").roles("admin");
		
		//正式功能中使用基于数据库的认证
		builder
		.userDetailsService(userDetailsService)
		.passwordEncoder(getPasswordEncoder());
	}
	

	@Override
	protected void configure(HttpSecurity security) throws Exception {

		security
		.authorizeRequests() // 对请求进行授权
		.antMatchers("/admin/to/login/page.html") // 针对登录页进行设置
		.permitAll() // 无条件访问
		.antMatchers("/bootstrap/**") // 针对静态资源进行设置
		.permitAll() 
		.antMatchers("/crowd/**")     // 针对静态资源进行设置
		.permitAll() 
		.antMatchers("/css/**")       // 针对静态资源进行设置
		.permitAll()  
		.antMatchers("/fonts/**")     // 针对静态资源进行设置
		.permitAll()     
		.antMatchers("/img/**")       // 针对静态资源进行设置
		.permitAll()
		.antMatchers("/jquery/**")    // 针对静态资源进行设置
		.permitAll()  
		.antMatchers("/layer/**")     // 针对静态资源进行设置
		.permitAll()  
		.antMatchers("/script/**")    // 针对静态资源进行设置
		.permitAll()  
		.antMatchers("/ztree/**")     // 针对静态资源进行设置
		.permitAll()
		.antMatchers("/index.jsp")    // 针对静态资源进行设置
		.permitAll()
		.antMatchers("/admin/get/page.html") // 权限控制的页面
		//.hasRole("PM - 项目经理") 	// 权限控制的角色
		.access("hasRole('PM - 项目经理') or hasRole('SA - 软件架构师')")
		.anyRequest()
		.authenticated()
		.and()
		.exceptionHandling()
		.accessDeniedHandler(new AccessDeniedHandler(){
			@Override
			public void handle(HttpServletRequest request, HttpServletResponse response,
					AccessDeniedException accessDeniedException) throws IOException, ServletException {
				request.setAttribute("exception", new Exception(CrowdConstant.MESSAGE_ACCESS_DENIED));
				request.getRequestDispatcher("/WEB-INF/system-error.jsp").forward(request, response);
			}
		})
		.and()
		.csrf()
		.disable()
		.formLogin()	// 开启表单登录功能
		.loginPage("/admin/to/login/page.html")	// 指定登录页面
		.loginProcessingUrl("/security/do/login.html") // 指定处理登录请求的地址
		.defaultSuccessUrl("/admin/to/main/page.html") // 指定登录成功后前往的地址
		.usernameParameter("loginAcct") // 账号的请求参数名称
		.passwordParameter("userPwd")	// 密码的请求参数名称
		.and()
		.logout()	// 开启退出登录功能
		.logoutUrl("/security/do/logout.html")	// 指定退出登录的地址
		.logoutSuccessUrl("/admin/to/login/page.html")	// 指定退出成功以后前往的地址
		;
		
		
	}
	
}
