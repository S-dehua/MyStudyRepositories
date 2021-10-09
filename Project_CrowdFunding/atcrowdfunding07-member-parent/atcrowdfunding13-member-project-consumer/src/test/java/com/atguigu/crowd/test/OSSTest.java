package com.atguigu.crowd.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.atguigu.crowd.util.CrowdUtil;
import com.atguigu.crowd.util.ResultEntity;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OSSTest {

	@Test
	public void testOSS() {
		
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream("imageTest.jpg");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		ResultEntity<String> resultEntity = CrowdUtil.uploadFileToOss(
				"http://oss-cn-hangzhou.aliyuncs.com",
				"LTAI5tMxEnnDbo6yiBKTEeF7", 
				"vZ7F0EVZRwAxr87bXq1jbOGCkJEiN5", 
				inputStream, 
				"sdehua", 
				"http://sdehua.oss-cn-hangzhou.aliyuncs.com", 
				"imageTest.jpg");
		
		System.out.println(resultEntity);
		
	}
	
}
