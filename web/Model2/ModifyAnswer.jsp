<%@ page import="model2.domain.Question" %>
<%@ page import="model2.service.QuestionService" %><%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/11
  Time: 下午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="http://localhost:8080/javaweb/Model2/">
    <title>modify</title>
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
<H1>——————修改界面————————</H1>

<%  //http://localhost:8080/javaweb/servlet/RegisterServlet
    //<form action="${pageContext.request.contextPath}/servlet/LoginServlet" method="post">
    Question question = (new QuestionService().getOneQuestion(Integer.parseInt(request.getParameter("ID"))));
    out.print("<form action=\"/javaweb/servlet/ModifyServlet?ID=" + question.getId() + "\" method='post' class=\"form-horizontal\" role=\"form\">");
    //out.print("题目:&nbsp&nbsp <input type='text' name='questionname' value="+ question.getQuestionname() +" size='100' /><br/> ");
    //out.print("选项A: <input type='text' name='answer1' value="+ question.getAnswer1() +" size='50' /><br/>");
    //out.print("选项B: <input type='text' name='answer2' value="+ question.getAnswer2() +" size='50' /><br/>");
    //out.print("正确答案: <input type='text' name='rightanswer' value="+ question.getRightanswer() +" size='50' /><br/>");
    //out.print("<input type='submit' value='修改' /><br/>");
    //out.print("</form>");

    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"timu\" class=\"col-sm-2 control-label\">题目</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='questionname' value="+ question.getQuestionname() +" \n" +
            "\t\t\t\t   placeholder=\"请输入题目\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"daan1\" class=\"col-sm-2 control-label\">选项A:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='answer1' value="+ question.getAnswer1()+" \n" +
            "\t\t\t\t   placeholder=\"请输入答案1\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"dana2\" class=\"col-sm-2 control-label\">选项B:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='answer2' value="+ question.getAnswer2()+" \n" +
            "\t\t\t\t   placeholder=\"请输入答案2\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"rightdana\" class=\"col-sm-2 control-label\">答案:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\"name='rightanswer'  value="+ question.getRightanswer()+" \n" +
            "\t\t\t\t   placeholder=\"请输入正确答案\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<div class=\"col-sm-offset-2 col-sm-10\">");
    out.print("<Button type=\"submit\" class=\"btn btn-default btn-lg\">\n" +
            "            <span class=\"glyphicon glyphicon-edit\"></span> 提交修改\n" +
            "            </Button>");
    out.print("</div>\n" +
            "\t</div>");
    out.print("</form>");

%>
</body>
</html>
