package com.atguigu.crowd.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.atguigu.crowd.util.QQMailUtil;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CrowdTest {

	@Test
	public void testMail() {
		String code = QQMailUtil.getCode();
		String sendQQMail = QQMailUtil.sendQQMail("1132209406@qq.com", 120);
		System.out.println(sendQQMail);
	}
	
}
