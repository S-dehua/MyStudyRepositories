package com.atguigu.crowd.constant;

public class CrowdConstant {

	// 常量属性
	public static final String ATTR_NAME_EXCEPTION = "exception";

	public static final String ATTR_NAME_PAGE_INFO = "pageInfo";

	public static final String ATTR_NAME_LOGIN_ADMIN = "loginAdmin";

	public static final String ATTR_NAME_LOGIN_MEMBER = "loginMember";

	public static final String ATTR_NAME_MESSAGE = "message";

	public static final String ATTR_NAME_TEMPLE_PROJECT = "tempProject";
	
	public static final String ATTR_NAME_PORTAL_DATA = "portal_data";

	// 异常消息
	// Account number password is wrong, please reenter
	public static final String MESSAGE_LOGIN_FAILED = "账号/密码错误，请重新输入";

	public static final String MESSAGE_LOGIN_ACCT_FAILED = "账号错误，请重新输入";

	public static final String MESSAGE_LOGIN_PSWD_FAILED = "密码错误，请重新输入";
	// This account is already in use
	public static final String MESSAGE_LOGIN_ACCT_ALREADY_IN_USE = "此账号正在被使用";
	// Please log in before visiting it
	public static final String MESSAGE_ACCESS_FORBIDEN = "请先登录再执行该操作";

	public static final String MESSAGE_ACCESS_DENIED = "权限不足以访问该资源";
	// String is empty and illegal
	public static final String MESSAGE_STRING_INVALIDATE = "输入为空值哦 ~ ";

	public static final String MESSAGE_CODE_NOT_EXISTS = "验证码已过期";

	public static final Object MESSAGE_CODE_INVALID = "验证码输入不正确";

	public static final String MESSAGE_HEADER_PIC_UPLOAD_FAILED = "头图上传失败！";

	public static final String MESSAGE_HEADER_PIC_EMPTY = "头图不可为空！";

	public static final String MESSAGE_DETAIL_PIC_EMPTY = "详情图片不可为空！";

	public static final String MESSAGE_DETAIL_PIC_UPLOAD_FAILED = "详情图片上传失败！";

	public static final String MESSAGE_TEMPLE_PROJECT_MISSING = "临时存储的Project对象丢失！";

	// 系统错误
	// System Error : Login Account is not unique
	public static final String MESSAGE_SYSTEM_ERROR_LOGIN_NOT_UNIQUE = "系统错误: 登录账号有重复";

	public static final String MESSAGE_SYSTEM_ERROR_DELETE_YOURSELF = "系统错误: 该账户正在试图删除自己";

	// 前缀
	public static final String REDIS_CODE_PREFIX = "redis_code_prefix_";


}
