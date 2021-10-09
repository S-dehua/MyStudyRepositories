package com.atguigu.crowd.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.crowd.entity.Role;
import com.atguigu.crowd.entity.RoleExample;
import com.atguigu.crowd.entity.RoleExample.Criteria;
import com.atguigu.crowd.mapper.RoleMapper;
import com.atguigu.crowd.service.api.RoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;

	@Override
	public PageInfo<Role> getPageInfo(Integer pageNum, Integer pageSize, String keyword) {
		// TODO Auto-generated method stub
		// 1.开启分页功能
		PageHelper.startPage(pageNum, pageSize);
		
		// 2.执行查询
		List<Role> roleList = roleMapper.selectRoleByKeyword(keyword);
		
		// 3.封装为PageInfo对象返回
		return new PageInfo<>(roleList);
	}

	@Override
	public void saveRole(Role role) {
		// TODO Auto-generated method stub
		roleMapper.insert(role);
	}

	@Override
	public void updateRole(Role role) {
		// TODO Auto-generated method stub
		roleMapper.updateByPrimaryKey(role);
	}

	@Override
	public void removeRole(List<Integer> roleIdList) {
		RoleExample example = new RoleExample();
		
		Criteria criteria = example.createCriteria();
		
		criteria.andIdIn(roleIdList);
		// TODO Auto-generated method stub
		roleMapper.deleteByExample(example);
	}

	@Override
	public List<Role> getAssignedRole(Integer adminId) {
		// TODO Auto-generated method stub
		
		return roleMapper.selectAssignRole(adminId);
	}

	@Override
	public List<Role> getUnAssignedRole(Integer adminId) {
		// TODO Auto-generated method stub
		return roleMapper.selectUnAssignRole(adminId);
	}
	
}
