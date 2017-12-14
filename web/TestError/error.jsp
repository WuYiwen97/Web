<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/3
  Time: 下午10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>error</title>
</head>
<body>
<div align="center"><H1>error message</H1>
    <h3><%=exception.toString()%></h3>
    <a href="Calculator.jsp">back</a>
</div>
</body>
</html>
