<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/7
  Time: 下午2:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@page import="model1.Conn"%>
<%@ page import="java.util.Objects" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Server to do the register page!</title>
</head>
<body>
<%
    //request.setCharacterEncoding("utf-8");
    String Register_name=request.getParameter("register_name");
    String Register_password=request.getParameter("register_password");
%>

<%
    //if(Register_id!=null&&Register_name!=null && Register_password!=null){
    if( Register_name!=null && Register_password!=null){
        Connection con;
        Statement sql;
        int rs;//这里是int
        try{
            Conn conn =new Conn();
            con=conn.getCon();
            sql=con.createStatement();
            System.out.print(Register_name);
            String insertSQL="INSERT INTO user(username,password) values('"+Register_name+"','"+Register_password+"')";
            rs=sql.executeUpdate(insertSQL);
            if (rs>0 &&!Register_name.equals("admin")){
                out.println(Register_name);
                out.println("注册成功");
                out.println("<br>经过3秒之后，将自动返回Login.jsp");
                response.setHeader("Refresh","3;URL=Login.jsp");
            }
            else{
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