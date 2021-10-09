package com.atguigu.crowd.mvc.config;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.atguigu.crowd.constant.CrowdConstant;
import com.atguigu.crowd.exception.LoginAcctAlreadyInUseException;
import com.atguigu.crowd.exception.LoginAcctAlreadyInUseForUpdateException;
import com.atguigu.crowd.exception.LoginFailException;
import com.atguigu.crowd.util.CrowdUtil;
import com.atguigu.crowd.util.ResultEntity;
import com.google.gson.Gson;

// @ControllerAdvice表示当前类是一个基于注解的异常处理器类
@ControllerAdvice
public class CrowdExceptionResolver {
	
	
	@ExceptionHandler(value= Exception.class)
	public ModelAndView resolverException(Exception exception,
			HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String viewName = "system-error";
		
		return commonResolver(viewName , exception, request, response);
	}
	
	
	
	@ExceptionHandler(value= LoginAcctAlreadyInUseForUpdateException.class)
	public ModelAndView resolverLoginAcctAlreadyInUseForUpdateException(LoginAcctAlreadyInUseForUpdateException exception,
			HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String viewName = "system-error";
		
		return commonResolver(viewName , exception, request, response);
	}
	
	
	@ExceptionHandler(value= LoginAcctAlreadyInUseException.class)
	public ModelAndView resolverLoginAcctAlreadyInUseException(LoginAcctAlreadyInUseException exception,
			HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String viewName = "admin-add";
		
		return commonResolver(viewName , exception, request, response);
	}
	
	
	@ExceptionHandler(value= LoginFailException.class)
	public ModelAndView resolverLoginFailedException(LoginFailException exception,
			HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String viewName = "admin-login";
		
		return commonResolver(viewName , exception, request, response);
	}
	
	
	
	@ExceptionHandler(value= NullPointerException.class)
	public ModelAndView resolverNullPointException(NullPointerException exception,
			HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String viewName = "system-error";
		
		return commonResolver(viewName , exception, request, response);
	}
	
	private ModelAndView commonResolver(
			String viewName,
			Exception exception,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException {
				//1 判断当前请求的类型
				boolean judgeResult = CrowdUtil.judgeRequestType(request);
				
				//2 如果当前是Ajax请求
				if (judgeResult) {
					//3 创建ResultEntity对象
					ResultEntity<Object> resultEntity = ResultEntity.failed(exception.getMessage());
					
					//4 创建Gson对象
					Gson gson = new Gson();
					
					//5 将ResultEntity对象转化为JSON字符串
					String json = gson.toJson(resultEntity);
					
					//6 将JSON字符串作为响应体
					response.getWriter().write(json);
					
					//7 由于上面已经通过原生的response对象返回了响应，所以不提供ModelAndView对象
					return null;
				}
				
				//8 如果不是Ajax请求，则创建ModelAndView对象
				ModelAndView modelAndView = new ModelAndView();
				
				//9 将Exception对象存入模型
				modelAndView.addObject(CrowdConstant.ATTR_NAME_EXCEPTION,exception);
				
				//10 设置对应的视图名称
				modelAndView.setViewName(viewName);
				
				//11 返回ModelAndView对象
				return modelAndView;
		
	}

}
