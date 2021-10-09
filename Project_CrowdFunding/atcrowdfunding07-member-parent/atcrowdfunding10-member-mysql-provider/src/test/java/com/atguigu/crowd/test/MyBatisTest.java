package com.atguigu.crowd.test;


import static org.hamcrest.CoreMatchers.nullValue;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import com.atguigu.crowd.entity.po.MemberPO;
import com.atguigu.crowd.entity.vo.DetailProjectVO;
import com.atguigu.crowd.mapper.MemberPOMapper;
import com.atguigu.crowd.mapper.ProjectPOMapper;
import com.atguigu.crowd.service.api.MemberService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyBatisTest {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private MemberPOMapper memberPOMapper;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ProjectPOMapper projectPOMapper;
	
	@Test
	public void testProjectPOMapper() {
		DetailProjectVO vo = projectPOMapper.selectDetailProjectVO(8);
		System.out.println(vo);
	}
	
	@Test
	public void testService() {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String encode = passwordEncoder.encode("123456");
		MemberPO memberPO = new MemberPO(null, "mikes1sw", encode, null, "email@qq.com", null, null, null, null, null);
		memberService.saveMember(memberPO);
	}
	
	
	@Test
	public void testMapper() {
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String encode = passwordEncoder.encode("123456");
		
		MemberPO memberPO = new MemberPO(null, "mikesssw", encode, "杰坷尔", "email@qq.com", null, null, null, null, null);
//		MemberPO memberPO = new MemberPO(null, "mike", encode, "杰坷尔", "email@qq.com", 1, 1, "杰克", "113220", 2);
		
		memberPOMapper.insertSelective(memberPO);
		
		System.out.println("success");
	}
	
	
	@Test
	public void testConnection() throws SQLException {
		
		Connection connection = dataSource.getConnection();
		
		System.out.println(connection.toString());
	}

}
