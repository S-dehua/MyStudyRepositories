package com.atguigu.crowd.test;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.junit.Test;

import com.atguigu.crowd.util.QQMailUtil;

public class QQMailTest {

	@Test
	public void testMail() {
		
		String code = QQMailUtil.getCode();
		
		QQMailUtil.sendQQMail("1132209406@qq.com",  120);
		
	}

}
