package com.atguigu.crowd.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.atguigu.crowd.constant.CrowdConstant;
import com.atguigu.crowd.entity.Admin;
import com.atguigu.crowd.entity.AdminExample;
import com.atguigu.crowd.entity.AdminExample.Criteria;
import com.atguigu.crowd.exception.LoginAcctAlreadyInUseException;
import com.atguigu.crowd.exception.LoginAcctAlreadyInUseForUpdateException;
import com.atguigu.crowd.exception.LoginFailException;
import com.atguigu.crowd.mapper.AdminMapper;
import com.atguigu.crowd.service.api.AdminService;
import com.atguigu.crowd.util.CrowdUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import ch.qos.logback.classic.Logger;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	private Logger logger = (Logger) LoggerFactory.getLogger(AdminServiceImpl.class);

	@Override
	public void saveAdmin(Admin admin) {
		
		// 1.密码加密 （更新）
		String userPswd = admin.getUserPswd();
		
		//String md5 = CrowdUtil.md5(userPswd);
		
		userPswd = bCryptPasswordEncoder.encode(userPswd);
		
		admin.setUserPswd(userPswd);
		
		// 2.生成创建时间
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String createTime = format.format(date);
		admin.setCreateTime(createTime);

		try {
			adminMapper.insert(admin);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			logger.info("异常全类名: "+e.getClass().getName());
			
			if (e instanceof DuplicateKeyException) {
				throw new LoginAcctAlreadyInUseException(CrowdConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
			}
		}
		// 测试回滚
		// throw new RuntimeException();
	}

	@Override
	public List<Admin> getAll() {
		return adminMapper.selectByExample(new AdminExample());
	}

	@Override
	public Admin getAdminByLoginAcct(String loginAcct, String userPwd) {

		// 1.根据登录账号查询Admin对象
		AdminExample adminExample = new AdminExample();
		Criteria criteria = adminExample.createCriteria();
		criteria.andLoginAcctEqualTo(loginAcct);
		List<Admin> list = adminMapper.selectByExample(adminExample);

		// 2.判断Admin对象是否为null
		if (list == null || list.size() == 0) {
			throw new LoginFailException(CrowdConstant.MESSAGE_LOGIN_ACCT_FAILED);
		}

		if (list.size() > 1) {
			throw new RuntimeException(CrowdConstant.MESSAGE_SYSTEM_ERROR_LOGIN_NOT_UNIQUE);
		}

		Admin admin = list.get(0);

		// 3.如果Admin对象为null则抛出异常
		if (admin == null) {
			throw new LoginFailException(CrowdConstant.MESSAGE_LOGIN_ACCT_FAILED);
		}

		// 4.如果Admin对象不为null则将数据库密码从Admin对象中取出
		String userPwd_DB = admin.getUserPswd();

		// 5.将表单提交得明文密码进行加密
		String userPwd_Form = CrowdUtil.md5(userPwd);

		// 6.对密码进行比较
		if (!Objects.equals(userPwd_Form, userPwd_DB)) {

			// 7.如果比较结果不一致则抛出异常
			throw new LoginFailException(CrowdConstant.MESSAGE_LOGIN_PSWD_FAILED);
		}

		// 8.如果一致则返回Admin对象
		return admin;
	}

	@Override
	public PageInfo<Admin> getPageInfo(String keyword, Integer pageNum, Integer pageSize) {

		// 1.调用PageHelper的静态方法开启分页功能
		// 这里充分体现了PageHelper的“非侵入式”设计：原本要做的查询不必有任何修改
		PageHelper.startPage(pageNum, pageSize);

		// 2.执行查询
		List<Admin> list = adminMapper.selectAdminByKeyword(keyword);

		// 3.封装到PageInfo对象中
		return new PageInfo<Admin>(list);
	}

	@Override
	public void remove(Integer adminId) {
		// TODO Auto-generated method stub
		adminMapper.deleteByPrimaryKey(adminId);
	}

	@Override
	public Admin getAdminById(Integer adminId) {
		// TODO Auto-generated method stub
		return adminMapper.selectByPrimaryKey(adminId);
	}

	@Override
	public void update(Admin admin) {
		// TODO Auto-generated method stub
		try {
			adminMapper.updateByPrimaryKeySelective(admin);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			logger.info("异常全类名: "+e.getClass().getName());
			
			if (e instanceof DuplicateKeyException) {
				throw new LoginAcctAlreadyInUseForUpdateException(CrowdConstant.MESSAGE_LOGIN_ACCT_ALREADY_IN_USE);
			}
		}
	}

	@Override
	public void saveAdminRoleRelationship(Integer adminId, List<Integer> roleIdList) {
		// 为了简化操作: 
		// 先根据adminId删除旧数据
		adminMapper.deleteRelationship(adminId);
		
		// 再根据roleIdList保存全部的新数据
		if (roleIdList != null && roleIdList.size() > 0) {
			adminMapper.insertNewRelationship(adminId,roleIdList);
		}
		
	}

	@Override
	public Admin getAdminByLoginAcct(String username) {
		
		AdminExample example = new AdminExample();
		
		Criteria criteria = example.createCriteria();
		
		criteria.andLoginAcctEqualTo(username);
		
		List<Admin> list = adminMapper.selectByExample(example);
		
		Admin admin = list.get(0);
		
		return admin;
	}

}
