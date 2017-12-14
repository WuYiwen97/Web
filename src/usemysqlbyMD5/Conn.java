package usemysqlbyMD5;

/**
 * Created by wuyiwen on 2017/11/18.
 */
import java.sql.*;


public class Conn {

    Statement statement;
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


    public boolean execute(String sql){
        try{
            statement.execute(sql);
        }catch(SQLException e){
            System.err.println("f:"+e.getMessage());
        }
        return true;
    }

    public ResultSet executeQuery(String sql) {
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql);
        } // Fourth
        catch (SQLException e) {
            System.err.println("d:" + e.getMessage());
        }
        return rs;
    }

    public int executeUpdate(String sql) {
        int i = 0;
        try {
            i = statement.executeUpdate(sql);
        } catch (SQLException e) {
            System.err.println("d:" + e.getMessage());
        }
        return i;
    }

    public void close() {
        try {
            statement.close();
            con.close();
        } // Final
        catch (SQLException e) {
            System.err.println("e:" + e.getMessage());
        }
    }

}
