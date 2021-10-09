package com.atguigu.crowd.exception;


/**
 * 登录失败后抛出的异常
 * @author coffee
 *
 */
public class LoginFailException extends RuntimeException {

	/**
	 * 	序列号
	 */
	private static final long serialVersionUID = 1L;

	public LoginFailException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginFailException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public LoginFailException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public LoginFailException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public LoginFailException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
	

}
