package model1;

/**
 * Created by wuyiwen on 2017/11/12.
 */

import java.sql.*;


public class Conn {

    private	Connection con=null;
    public Conn() {
        try {
            //1.使用MySql的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            //2.连接数据库
            con = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/wuyiwen?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&useSSL=false");
        }catch (SQLException e1) {
            e1.printStackTrace();
        }
    }
    public Connection getCon(){
        return con;
    }
}
