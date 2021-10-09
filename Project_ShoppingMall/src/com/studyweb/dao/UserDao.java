package com.studyweb.dao;

import com.studyweb.pojo.User;

public interface UserDao {

    /**
     * @return com.studyweb.pojo.User
     * @MethodName queryUserByUsername
     * @Author coffee
     * @Description 根据用户名查询用户信息
     * @Date 21:07 2021/6/10
     * @Param [suername]
     **/
    public User queryUserByUsername(String username);

    /**
     * @MethodName queryUserByUsernameAndPassword
     * @Author coffee
     * @Description 根据用户名和密码查询用户信息
     * @Param [username, password]
     * @return com.studyweb.pojo.User
     **/
    public User queryUserByUsernameAndPassword(String username, String password);

    /**
     * @MethodName SaveUser
     * @Author coffee
     * @Description 保存用户信息
     * @Param [user]
     * @return int
     **/
    public int SaveUser(User user);
}
