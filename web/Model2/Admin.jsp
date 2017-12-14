<%@ page import="java.util.List" %>
<%@ page import="model2.domain.Question" %>
<%@ page import="model2.service.QuestionService" %>
<%@ page import="model2.domain.User" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/5
  Time: 下午9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="http://localhost:8080/javaweb/Model2/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>题库</title>
    <style type="text/css">
        body{
            background:url(images/pink1.jpg) no-repeat;
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            -moz-background-size: cover;
            -ms-background-size: cover;
        }
    </style>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
<%
    User us = (User)session.getAttribute("user");
    if (us != null) {
        if (us.getUsername().equals("admin")){
            out.println("欢迎管理员的到来!");
        }
        else {
            out.print("普通用户不可以登录题库");
            out.println("<br>经过3秒之后，将自动返回Login.jsp");
            response.setHeader("Refresh", "3;URL=Login.jsp");
        }
    }
    else {
        out.println("请您先登陆，谢谢");
        out.println("<br>经过3秒之后，将自动返回Login.jsp");
        response.setHeader("Refresh","3;URL=Login.jsp");
    }
%>
<h3>题库</h3>
<%
    List<Question> questionList = (new QuestionService()).getQuestion();
    int id = 1;
    out.print("<table class=\"table table-hover\"");
    out.print("<caption></caption>");
    out.print("<thead>");
    out.print("<tr>");
    out.print("<th>序号</th>");
    out.print("<th>题目</th>");
    out.print("<th>选项A</th>");
    out.print("<th>选项B</th>");
    out.print("<th>答案</th>");
    out.print("<th>操作</th>");
    out.print("<th>删除</th>");
    out.print("</tr>");
    out.print("<thead>");
    for(Question question:questionList) {
        out.print("<tbody>");
        out.print("<tr>");
        out.print("<td>" + id + "</th>");
        out.print("<td>" + question.getQuestionname() + "</th>");
        out.print("<td>" + question.getAnswer1() + "</th>");
        out.print("<td>" + question.getAnswer2() + "</th>");
        out.print("<td>" + question.getRightanswer() + "</th>");
        out.print("<td><a href=\"/javaweb/Model2/ModifyAnswer.jsp?ID=" + question.getId() + "\">修改</a></th>");
        out.print("<td><a href=\"/javaweb/servlet/DeleteServlet?ID=" + question.getId() + "\" onclick='return confirm(\"确认要删除吗?\")'>删除</a></th>");
        out.print("</tr>");
        out.print("<tbody>");
        id++;
    }
    out.print("</table>");
    //out.print("<a href='/ExamMVC/admin_insert.jsp'>添加题目</a><br/>");
%>
<p>
    <a href="Add.jsp">
        <span class="glyphicon glyphicon-plus"></span>添加题目
    </a>
</p>
<p>
    <a href="Answer.jsp?del">
        <span class="glyphicon glyphicon-user"></span>退出登录
    </a>
<%
    request.setCharacterEncoding("UTF-8");
    String del = request.getParameter("del");
    if(del!=null){
        session.invalidate();
        response.sendRedirect("Login.jsp");
    }
%>
</p>

</body>
</html>