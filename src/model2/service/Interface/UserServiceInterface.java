package model2.service.Interface;

import model2.domain.User;

import java.sql.SQLException;

/**
 * Created by wuyiwen on 2017/12/9.
 */
public interface UserServiceInterface {

    String register(String username, String password) throws SQLException;

    User login(String username, String password) throws SQLException;
}
