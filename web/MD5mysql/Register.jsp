<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/11/19
  Time: 下午4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>User to Register Page!</title>
</head>
<body><form action="CheckRegister.jsp" method="post">
    <p align="center">注册界面
    <table align="center">
    <tr>
        <th>学号</th>
        <th><input type="text" name="register_id" /></th>
    </tr>
        <tr>
            <th>用户名</th>
            <th><input type="text" name="register_name" /></th>
        </tr>
        <tr>
            <th>密码</th>
            <th><input type="password" name="register_password" /></th>
        </tr>
        <tr>
            <th><input type="submit" value="注册"/></th>
            <th><input type="reset" value="重置"/></th>
        </tr>
    </table>

</form>

<p>
<form action="Login.jsp" method="POST" >
    <input type="submit"  value="返回登录界面"/><br/>

</form>

</body>
</html>
