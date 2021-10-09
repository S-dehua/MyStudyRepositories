package com.atguigu.crowd.mvc.config;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.atguigu.crowd.entity.Admin;

/**
 * 考虑到User对象中仅仅包含账号密码，为了能够获取到原始的Admin对象，专门创建这个类对User进行拓展
 * @author coffee
 *
 */
public class SecurityAdmin extends User{
	
	private static final long serialVersionUID = 1L;
	
	// 原始的Admin对象，包含Admin对象的全部属性
	private Admin originalAdmin;

	public SecurityAdmin(Admin originalAdmin,List<GrantedAuthority> authorities) {
		
		super(originalAdmin.getLoginAcct(), originalAdmin.getUserPswd(), authorities);
		
		this.originalAdmin = originalAdmin;
		
		// 将原始Admin对象中的密码删除
		this.originalAdmin.setUserPswd(null);
		
	}

	public Admin getOriginalAdmin() {
		return originalAdmin;
	}

	
}
