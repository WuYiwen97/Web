<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/5
  Time: 下午9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="model2.domain.Question"%>
<%@ page import="model2.service.QuestionService"%>
<%@ page import="java.util.List" %>
<%@ page import="model2.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
<body>
<%
    User us = (User)session.getAttribute("user");
    if (us != null) {
        out.println(us.getUsername()+" : 欢迎您的到来!");
    }else {
        out.println("请您先登陆，谢谢");
        out.println("<br>经过3秒之后，将自动返回Login.jsp");
        response.setHeader("Refresh","3;URL=Login.jsp");
    }
%>
    <h1>政治判断题</h1>
    <%
        List<Question> questionList=(new QuestionService()).getQuestion();
        int id=1;
        out.print("<div><form action='Answer.jsp' method='post'>");  //mofipy
        for(Question question:questionList) {
          //  out.print(id + ". ");
            //id++;
           // out.print(question.getQuestionname() + "<br/>");
           // out.print("<label><input type='radio' name='" + question.getId() +"' value='是'>"  + question.getAnswer1() + "</label>");
          //  out.print("<label><input type='radio' name='" + question.getId() +"' value='不是'>"  + question.getAnswer2() +"</label><br/>");


            out.print("<div class=\"panel-group\" id=\"accordion\">\n" +
                    "\t\n" +
                    "\t<div class=\"panel panel-default\">\n" +
                    "\t\t<div class=\"panel-heading\">\n" +
                    "\t\t\t<h4 class=\"panel-title\">");
            out.print("<a data-toggle=\"collapse\" data-parent=\"#accordion\" \n" +
                    "\t\t\t\t   href=\"#"+question.getId() +"\">");
            out.print(question.getQuestionname());
            out.print("\t\t</a>\n" +
                    "\t\t\t</h4>\n" +
                    "\t\t</div>");

            out.print("<div id=\""+ question.getId()+"\" class=\"panel-collapse collapse in\">\n" +
                    "\t\t\t<div class=\"panel-body\">");
            out.print("<label><input type='radio' name='" + question.getId() +"' value='是'>"  + question.getAnswer1() + "</label>");
            out.print("<label><input type='radio' name='" + question.getId() +"' value='不是'>"  + question.getAnswer2() +"</label><br/>");

            out.print("\t\t</div>\n" +
                    "\t\t</div>\n" +
                    "\t</div>");
            out.print("</div>");



        }%>
        <%--out.print("<input class=\"btn btn-default\" type=\"submit\" value=\"提交\">");--%>
        <Button type="submit" class="btn btn-default btn-lg">
        <span class="glyphicon glyphicon-circle-arrow-right"></span> 提交
        </Button>
    <%
        out.print("</form></div>");
    %>
</body>
</html>