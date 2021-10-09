package com.atguigu.crowd.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.crowd.entity.Menu;
import com.atguigu.crowd.entity.MenuExample;
import com.atguigu.crowd.mapper.MenuMapper;
import com.atguigu.crowd.service.api.MenuService;

@Service
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuMapper menuMapper;

	@Override
	public List<Menu> getAll() {
		MenuExample example = new MenuExample();
		// TODO Auto-generated method stub
		return menuMapper.selectByExample(example);
	}

	@Override
	public void saveMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuMapper.insert(menu);
	}

	@Override
	public void updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuMapper.updateByPrimaryKeySelective(menu);
	}

	@Override
	public void removeMenu(Integer id) {
		// TODO Auto-generated method stub
		menuMapper.deleteByPrimaryKey(id);
	}
	
}
