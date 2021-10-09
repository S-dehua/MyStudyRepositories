package com.atguigu.crowd.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import com.atguigu.crowd.api.MySQLRemoteService;
import com.atguigu.crowd.entity.po.MemberPO;
import com.netflix.discovery.converters.Auto;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MybatisTest {

	@Autowired
	private MySQLRemoteService mySQLRemoteService;

	@Test
	public void test() {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		String encode = passwordEncoder.encode("123456");
		MemberPO memberPO = new MemberPO(null, "mikes1s123w", encode, null, "email@qq.com", null, null, null, null, null);
		
		mySQLRemoteService.saveMember(memberPO);

	}

}
