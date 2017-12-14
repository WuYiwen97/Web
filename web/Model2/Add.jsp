<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/12
  Time: 下午2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加题目</title>
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
<H1>——————添加界面————————</H1>
<%


    out.print("<form action='/javaweb/servlet/AddServlet' method='post' class=\"form-horizontal\" role=\"form\">");
    //out.print("题目:&nbsp&nbsp <input type='text' name='questionname' value="+ question.getQuestionname() +" size='100' /><br/> ");
    //out.print("选项A: <input type='text' name='answer1' value="+ question.getAnswer1() +" size='50' /><br/>");
    //out.print("选项B: <input type='text' name='answer2' value="+ question.getAnswer2() +" size='50' /><br/>");
    //out.print("正确答案: <input type='text' name='rightanswer' value="+ question.getRightanswer() +" size='50' /><br/>");
    //out.print("<input type='submit' value='修改' /><br/>");
    //out.print("</form>");

    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"timu\" class=\"col-sm-2 control-label\">题目</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='questionname'   \n" +
            "\t\t\t\t   placeholder=\"请输入题目\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"daan1\" class=\"col-sm-2 control-label\">选项A:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='answer1'  \n" +
            "\t\t\t\t   placeholder=\"请输入答案1\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"dana2\" class=\"col-sm-2 control-label\">选项B:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\" name='answer2'  \n" +
            "\t\t\t\t   placeholder=\"请输入答案2\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<label for=\"rightdana\" class=\"col-sm-2 control-label\">选项A:</label>\n" +
            "\t\t<div class=\"col-sm-10\">\n" +
            "\t\t\t<input type=\"text\" class=\"form-control\"name='rightanswer'  \n" +
            "\t\t\t\t   placeholder=\"请输入正确答案\">\n" +
            "\t\t</div>\n" +
            "\t</div>");
    out.print("<div class=\"form-group\">\n" +
            "\t\t<div class=\"col-sm-offset-2 col-sm-10\">");
    out.print("<Button type=\"submit\" class=\"btn btn-default btn-lg\">\n" +
            "            <span class=\"glyphicon glyphicon-plus\"></span> 添加题目\n" +
            "            </Button>");
    out.print("</div>\n" +
            "\t</div>");
    out.print("</form>");
%>
</body>
</html>
