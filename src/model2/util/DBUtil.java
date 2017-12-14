package model2.util;

/**
 * Created by wuyiwen on 2017/12/5.
 */

import java.sql.*;


public class DBUtil {

    private static Connection connection;

    static {
        try {
            // 1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 2.获取数据库连接
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wuyiwen?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&useSSL=false");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        return connection;
    }
}

