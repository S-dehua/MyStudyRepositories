package com.studyweb.test;

import com.studyweb.pojo.User;
import com.studyweb.service.UserService;
import com.studyweb.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {

    UserService userService = new UserServiceImpl();

    @Test
    public void registUser() {
        userService.registUser(new User(null,"bbj168","666666","bbj168@qq.com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null, "bbj168", "666666", "bbj168@qq.com")));
    }

    @Test
    public void existsUsername() {
        System.out.println(userService.existsUsername("sdh"));
    }
}