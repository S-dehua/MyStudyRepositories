package com.studyweb.test;

import com.studyweb.dao.UserDao;
import com.studyweb.dao.impl.UserDaoImpl;
import com.studyweb.pojo.User;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {
    UserDao userDao = new UserDaoImpl();
    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void queryUserByUsername() {

        if (userDao.queryUserByUsername("admin") == null) {
            System.out.println("用户名可用！");
        } else {
            System.out.println("用户名已存在！");
        }
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        if (userDao.queryUserByUsernameAndPassword("admin","admin") == null) {
            System.out.println("用户名或密码错误，登录失败");
        } else {
            System.out.println("查询成功");
        }
//        System.out.println(userDao.queryUserByUsernameAndPassword("admin","admin"));
    }

    @Test
    public void saveUser() {
        System.out.println(userDao.SaveUser(new User(null, "sdh", "123456", "sdh@qq.com")));
    }
}