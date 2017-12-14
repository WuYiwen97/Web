package model2.dao;

import model2.dao.Interface.UserDaoInterface;
import model2.domain.User;
import model2.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wuyiwen on 2017/12/9.
 */
public class UserDao implements UserDaoInterface{
    /**
     * 添加用户
     *
     * @param username
     * @param password
     */
    @Override
    public void addUser(String username, String password) throws SQLException {
        Connection connection = DBUtil.getConnection();
        PreparedStatement statement = connection.prepareStatement("INSERT INTO user(username,password) VALUES(?,?) ");
        statement.setString(1, username);
        statement.setString(2, password);
        statement.executeUpdate();
    }

    /**
     * 删除用户
     *
     * @param id
     */
    @Override
    public void deleteUser(int id) throws SQLException {

    }

    /**
     * 修改用户信息
     *
     * @param id
     * @param password
     */
    @Override
    public void updateUser(int id, String password) throws SQLException {

    }

    /**
     * 查询用户是否存在
     *
     * @param name
     */
    @Override
    public boolean queryUser(String name) throws SQLException {
        Connection connection = DBUtil.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM user WHERE username = ?");
        statement.setString(1, name);
        ResultSet resultSet = statement.executeQuery();
        return resultSet.next();
    }

    /**
     * 登录时候用的= =
     *
     * @param username
     * @param password
     */
    @Override
    public User getUser(String username, String password) throws SQLException {
        Connection connection = DBUtil.getConnection();
        PreparedStatement statement = connection.prepareStatement("select * from user where username=? and password=?");
        statement.setString(1, username);
        statement.setString(2, password);
        ResultSet resultSet = statement.executeQuery();
        User user = new User();
        if (resultSet.next()) {
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
        }
        return user;
    }
}
