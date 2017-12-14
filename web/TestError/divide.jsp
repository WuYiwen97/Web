<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/3
  Time: 下午9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>divide</title>
</head>
<body>
<%
    int dividend=0; int divisor=0;int result =0;
    try{
        dividend=Integer.parseInt(request.getParameter("value1"));

    }
    catch (NumberFormatException nfex){
        throw  new NumberFormatException("被除数不是整数");
    }
    try{
        divisor =Integer.parseInt(request.getParameter("value2"));
    }
    catch (NumberFormatException nfex){
        throw new  NumberFormatException("除数不是整数");
    }
    result =dividend/divisor;
    out.print(dividend +"/" +divisor +"=" +result);
%>
</body>
</html>
