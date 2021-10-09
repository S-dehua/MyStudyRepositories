package com.atguigu.crowd.test;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.atguigu.crowd.api.RedisRemoteService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {
	
	@Autowired
	private RedisRemoteService redisRemoteService; 
	
	@Test
	public void testRedis() {
		redisRemoteService.setRedisKeyValueRemoteWithTimeout("RedisTest", "121", 2000, TimeUnit.MINUTES);
	}

}
