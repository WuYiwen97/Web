package model2.dao.Interface;

/**
 * Created by wuyiwen on 2017/12/9.
 */

import model2.domain.User;

import java.sql.SQLException;

/**
 * 用户数据访问对象接口
 */
public interface UserDaoInterface {
    /**
     * 添加用户
     */
    void addUser(String username, String password) throws SQLException;

    /**
     * 删除用户
     */
    void deleteUser(int id) throws SQLException;

    /**
     * 修改用户信息
     */
    void updateUser(int id, String password) throws SQLException;

    /**
     * 查询用户是否存在
     */
    boolean queryUser(String name) throws SQLException;


    /**
     * 登录时候用的= =
     */
    User getUser(String username, String password) throws SQLException;
}
