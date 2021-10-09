package com.atguigu.crowd.util;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class QQMailUtil {

	/**
	 * 	给远程邮箱接口提供发送请求————将邮件发送给用户
	 * @param recipient
	 * @param deadline
	 * @return 成功返回验证码；失败则返回null
	 */
	public static String sendQQMail(String recipient,Integer deadline) {
		// 做链接前的准备工作 也就是参数初始化
		Properties properties = new Properties();
		properties.setProperty("mail.smtp.host", "smtp.qq.com");// 发送邮箱服务器
		properties.setProperty("mail.smtp.port", "465");// 发送端口
		properties.setProperty("mail.smtp.auth", "true");// 是否开启权限控制
		properties.setProperty("mail.debug", "true");// true 打印信息到控制台
		properties.setProperty("mail.transport", "smtp");// 发送的协议是简单的邮件传输协议
		properties.setProperty("mail.smtp.ssl.enable", "true");
		// 建立两点之间的链接
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("1132209406@qq.com", "换成自己的授权码");
			}
		});
		// 创建邮件对象
		Message message = new MimeMessage(session);
		
		// 生成验证码
		String code = QQMailUtil.getCode();
		
		// 设置发件人
		try {
			message.setFrom(new InternetAddress("1132209406@qq.com"));

			// 设置收件人
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));// 收件人
			// 设置主题
			message.setSubject("【s-dehua | 测试】验证码");
			// 设置邮件正文 第二个参数是邮件发送的类型
			message.setContent("【s-dehua | 测试】您本次验证码为: "+code+", 有效时间为"+deadline+"秒。<br><br>"
					+ "如果您并未发过此请求，则可能是因为其他用户误输入了您的电子邮件地址而使您收到这封邮件，那么您可以放心的忽略此邮件，无需进一步采取任何操作。" 
					, "text/html;charset=UTF-8");
			// 发送一封邮件
			Transport transport = session.getTransport();
			// 创建session时已经获取密码等信息，故注释下一行代码 (个人信息已改为模板)
			// transport.connect("email@qq.com", "password");
			Transport.send(message);
			
			return code;
		} catch (MessagingException e) {
			e.printStackTrace();
			return null;
		}
	}
	

    // 生成6位数字验证码
    public static String getCode(){
        Random random = new Random();

        String code ="";

        for (int i = 0; i < 6; i++) {
            int value = random.nextInt(10);
            code += value;
        }
        return code;
    }

}
