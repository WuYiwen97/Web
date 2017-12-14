<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/4
  Time: 下午4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="http://localhost:8080/javaweb/Model2/">
    <title>登录</title>
    <link href="css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="wrap">
    <div class="container">
        <h1>Welcome</h1>
        <form action="${pageContext.request.contextPath}/servlet/LoginServlet" method="post">
            <input type="text" placeholder="user login" name="Name"/>
            <input type="password" placeholder="password" name="Password"/>
            <input type="submit" value="Login"/>
        </form>
        <p align="center">Click me to <a href="Register.jsp">Register</a><br>
    </div>
    <ul>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</body>
</html>
