<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/11/19
  Time: 下午4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@page import="usemysqlbyMD5.Conn"%>
<%@ page import="usemysqlbyMD5.Md5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Server to do the register page!</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String Register_id=request.getParameter("register_id");
    String Register_name=request.getParameter("register_name");
    String Register_password=request.getParameter("register_password");
%>

<%
    if(Register_id!=null&&Register_name!=null && Register_password!=null){
        Md5 md5=new Md5();
        String md5pwd=md5.toMD5(Register_password);
        Connection con;
        Statement sql;
        int rs;//这里是int
        System.out.print(Register_password+"\n");
        System.out.print(md5pwd+"\n");
        try{
            Conn conn =new Conn();
            con=conn.getCon();
            sql=con.createStatement();
            String insertSQL="INSERT INTO user(id,username,password) values('"+Register_id+"','"+Register_name+"','"+md5pwd+"')";
            rs=sql.executeUpdate(insertSQL);
            if (rs>0){
                out.println(Register_name);
                out.println("注册成功");
                out.println("<br>经过3秒之后，将自动返回Login.jsp");
                response.setHeader("Refresh","3;URL=Login.jsp");
            }
            else{//为什么不显示？
                out.println("注册失败");
                out.println("<br>经过3秒之后，将自动返回Register.jsp");
                response.setHeader("Refresh","3;URL=Register.jsp");
            }
        }
        catch(SQLException e){

        }
    }
    else{
        out.println("注册失败");
        out.println("<br>经过3秒之后，将自动返回Register.jsp");
        response.setHeader("Refresh","3;URL=Register.jsp");
    }
    /*try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/summer", "root", "mysql");
        Statement stmt=conn.createStatement();
        //desogn the sql statement
        String InsertSQL="INSERT INTO User(Name,Password) values('"+Register_name+"','"+Register_password+"')";
        System.out.println(Register_name+"\t"+Register_password);


        //do the query operation,and here is the most important sql statement.
        int FLAG=stmt.executeUpdate(InsertSQL);

        if(FLAG>0){
            response.getWriter().write("Congratulation! REgister Success!");
        }else{
            response.getWriter().write("Sorry!Register Failed!\nPlease Retry it!");
        }
    }catch(SQLException e){

    }*/
%>



</body>
</html>