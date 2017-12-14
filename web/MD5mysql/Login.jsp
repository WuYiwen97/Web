<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/11/18
  Time: 下午12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="CheckLogin.jsp" method="post">
    <p align="center">登陆界面
    <table align="center">
        <tr>
            <th>用户名</th>
            <th><input type="text" name="username" /></th>
        </tr>
        <tr>
            <th>密码</th>
            <th><input type="password" name="password" /></th>
        </tr>
        <tr>
            <th><input type="submit" value="登录"/></th>
            <th><input type="reset" value="重置"/></th>
        </tr>
    </table>
    <p align="center">Click me to <a href="Register.jsp">Register</a><br>
</form>
</body>
</html>



