<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/11/18
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="usemysqlbyMD5.Conn"%>
<%@ page import="usemysqlbyMD5.Md5" %>
<html>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("username");
    String pw = request.getParameter("password");
%>
<%
    Md5 md5=new Md5();
    String md5pwd=md5.toMD5(pw);
    if (name != null && pw != null) {
        Connection con;
        Statement sql;
        ResultSet rs;
        try {
            Conn conn = new Conn();
            con = conn.getCon();
            sql = con.createStatement();

            rs = sql.executeQuery("SELECT * FROM USER ");
            while (rs.next()) {
                if (name.equals(rs.getString("username"))) {
                    if (md5pwd.equals(rs.getString("password"))) {/*
                        System.out.println(rs.getString("password"));
                        System.out.println(md5pwd);
                        System.out.println(md5.toMD5(rs.getString("password")).substring(32, 64));*/
                        response.sendRedirect("Result.jsp");
                    }
                }



            }out.println("error,please return！ <a href='Login.jsp'>login</a>");

        } catch (SQLException e1) {
            e1.printStackTrace();
        }
    }

%>
</body>
</html>
