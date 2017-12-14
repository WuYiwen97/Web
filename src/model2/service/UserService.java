package model2.service;

import model2.dao.Interface.UserDaoInterface;
import model2.dao.UserDao;
import model2.domain.User;
import model2.service.Interface.UserServiceInterface;

import java.sql.SQLException;

/**
 * Created by wuyiwen on 2017/12/9.
 */
public class UserService implements UserServiceInterface {
    private UserDaoInterface userDao;
    public UserService() {
        userDao = new UserDao();
    }
    @Override
    public String register(String username, String password) throws SQLException {
        String registerResult;
        if (!userDao.queryUser(username)) {
            userDao.addUser(username, password);
            registerResult = "注册成功,请返回登录界面登录";
        } else {
            registerResult = "注册失败,可能该用户名已存在";
        }
        return registerResult;
    }

    @Override
    public User login(String username, String password) throws SQLException {
        User user = userDao.getUser(username,password);
        if (user != null && user.getPassword() != null) {
            return user;
        }
        return null;
    }
}
