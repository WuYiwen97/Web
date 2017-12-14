<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
<body>
<p >登陆界面</p>

<form action="Login.jsp" method="post">
    <p align="center">登陆界面
    <table align="center">
        <tr>
            <th>用户名</th>
            <th><input type="text" name="Name" /></th>
        </tr>
        <tr>
            <th>密码</th>
            <th><input type="password" name="Password" /></th>
        </tr>
        <tr>
            <th><input type="submit" value="登录"/></th>
            <th><input type="reset" value="重置"/></th>
        </tr>
    </table>
    <p align="center">Click me to <a href="Register.jsp">Register</a><br>
</form>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("Name");
    String password = request.getParameter("Password");
    if (name != null && password != null) {
        Connection con;
        Statement sql;
        ResultSet rs;
        try {
            //2.连接数据库
            Conn conn = new Conn();
            con = conn.getCon();
            //3.1创建Statement对象
            sql = con.createStatement();
            //3.2执行SQL语句
            rs = sql.executeQuery("SELECT * FROM USER WHERE username='"+name+"' and password='"+password+"'");
            if (rs.next()) {
                Users us = new Users();
                us.setUsername(name);
                us.setPassword(password);
                con.close();
                session.setAttribute("user", us);
                response.sendRedirect("Check.jsp");
            }
            /*rs = sql.executeQuery("SELECT * FROM USER ");
            //防止sql注入
            while (rs.next()) {
                User us = new User();
                if(name.equals(rs.getString("username"))&&password.equals(rs.getString("password")))
                {
                    us.setUsername(name);
                    us.setPassword(password);
                    session.setAttribute("user", us);
                    response.sendRedirect("CheckLogin.jsp");}
            }
            {
                con.close();
                out.println("登录失败，请输入正确的用户名和密码");
            }
*/
            else{
                con.close();
                out.println("登录失败，请输入正确的用户名和密码");
            }
        }catch (SQLException e1) {
            e1.printStackTrace();
        }
    }
%>
</body>
</html>