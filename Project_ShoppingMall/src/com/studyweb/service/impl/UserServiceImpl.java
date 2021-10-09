package com.studyweb.service.impl;

import com.studyweb.dao.UserDao;
import com.studyweb.dao.impl.UserDaoImpl;
import com.studyweb.pojo.User;
import com.studyweb.service.UserService;

/**
 * @Description TODO
 * @Author coffee
 * @Email sdhstart@qq.com
 * @Version 1.0
 **/
public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {
        userDao.SaveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        if (userDao.queryUserByUsername(username) == null){
            //等于null，说明没查到，没查到表示可用
            return false;
        }
        return true;
    }
}
