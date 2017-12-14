<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/11/18
  Time: 下午5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  <%--must have--%>
    <title>Loginjsp</title>

</head>
<body>
        <form action="Login.jsp" method="post">
            <table align="center" >
                <caption>登录</caption>
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
</form>

</body>
</html>
