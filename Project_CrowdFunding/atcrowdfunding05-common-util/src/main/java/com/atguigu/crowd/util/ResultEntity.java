package com.atguigu.crowd.util;

/**
 * 	统一整个项目中AJAX请求返回的结果
 *	（未来也可以用于分布式架构各个模块间调用时返回统一类型）
 * 
 * @author coffee
 *
 * @param <T>
 */
public class ResultEntity<T> {
	
	public static final String SUCCESS = "SUCCESS";
	public static final String FAILED = "FAILED";
	
	//用来封装当前请求处理的结果是成功还是失败
	private String result;
	
	//请求处理失败时返回的错误消息
	private String message;
	
	//要返回的数据
	private T data;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public ResultEntity(String result, String message, T data) {
		super();
		this.result = result;
		this.message = message;
		this.data = data;
	}

	public ResultEntity() {
		super();
	}

	/**
	 *	请求处理成功且不需要返回数据时使用的工具方法
	 * @param <Type>
	 * @return
	 */
	public static <Type> ResultEntity<Type> successWithoutData() {
		return new ResultEntity<Type>(SUCCESS,null,null);
	}
	
	/**
	 * 请求处理成功且需要返回数据时使用的工具方法
	 * @param <Type>
	 * @param data
	 * @return
	 */
	public static <Type> ResultEntity<Type> successWithData(Type data) {
		return new ResultEntity<Type>(SUCCESS,null,data);
	}
	
	
	public static <Type> ResultEntity<Type> failed(String message) {
		return new ResultEntity<Type>(FAILED,message,null);
	}
	
	/**
	 * 请求处理失败后使用的工具方法
	 */
	@Override
	public String toString() {
		return "ResultEntity [result=" + result + ", message=" + message + ", data=" + data + "]";
	}
	
	
	

}
