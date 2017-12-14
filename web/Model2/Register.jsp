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
    <title>Register</title>
    <base href="http://localhost:8080/javaweb/Model2/">
    <link href="css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="wrap">
    <div class="container">
        <h1>Welcome</h1>
        <form action="${pageContext.request.contextPath}/servlet/RegisterServlet" method="post">
            <input type="text" placeholder="用户名必须为2-10位的中文" name="Name"/>
            <%
                String registerInfo = (String) request.getAttribute("registerInfo");
                if (registerInfo != null) {
            %>
            <script>alert('<%=registerInfo%>');</script>
            <%
                }
            %>
            <input type="password" placeholder="密码必须是6-16位的英文和数字" name="Password"/>
            <input type="submit" value="Register"/>
        </form>
        <p align="center">Click me to <a href="Login.jsp">Login</a><br>
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
