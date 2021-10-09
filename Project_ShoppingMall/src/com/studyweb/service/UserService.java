package com.studyweb.service;

import com.studyweb.pojo.User;

public interface UserService {
    /**
     * @MethodName regisUser
     * @Author coffee
     * @Description 注册用户
     * @Param [user]
     * @return void
     **/
    public void registUser(User user);

    /**
     * @MethodName login
     * @Author coffee
     * @Description 登录
     * @Param [user]
     * @return com.studyweb.pojo.User
     * 如果返回null，则登录失败，返回有值，是登录成功。
     **/
    public User login(User user);
    
    /**
     * @MethodName existsUsername 
     * @Author coffee
     * @Description 检查用户名是否可用
     * @Param [usernmae]
     * @return boolean
     * 返回true表示用户名已存在，返回false表示用户名可用
     **/
    public boolean existsUsername(String username);
}
