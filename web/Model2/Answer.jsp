<%--
  Created by IntelliJ IDEA.
  User: wuyiwen
  Date: 2017/12/11
  Time: 下午2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="model2.domain.Question" %>
<%@ page import="java.util.List" %>
<%@ page import="model2.service.QuestionService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>成绩</title>
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
<h1> </h1>
<h2> </h2>
<%
    List<Question> questionList=(new QuestionService()).getQuestion();
    int num=0, id = 1;
    for(Question question:questionList) {
        if(question.getRightanswer().equals(request.getParameter(String.valueOf(question.getId())))){
            num++;
          //out.print("第" + id + "题回答正确" + "<br/>");
        }
        else {
           // out.print("第" + id + "题回答错误，正确答案为" + question.getRightanswer() + "<br/>");
        }
        id++;
    }
    //out.print("您共计答对" + num + "道题");
%>

<%--<p class="text-center" ><strong>
    <%out.print("您共计答对" + num + "道题");%>
</strong>--%>

</p>
<h1 ><%out.print("共计答对" + num + "道题");%></h1>
<div>
    <p>
        <form action="Answer.jsp" method="POST">
            <Button type="submit" class="btn btn-default btn-lg" name="del">
            <span class="glyphicon glyphicon-user"></span> 退出登录
            </Button>
        </form>
    <%
        request.setCharacterEncoding("UTF-8");
        String del = request.getParameter("del");
        if(del!=null){
            session.invalidate();
            response.sendRedirect("Login.jsp");
        }
    %>
    </p>
</div>
<div>
    <p>
    <form action="Member.jsp" method="POST">
        <Button type="submit" class="btn btn-default btn-lg" >
            <span class="glyphicon glyphicon-repeat"></span> 重新做题
        </Button>
    </form>

    </p>
</div>

</body>
</html>

