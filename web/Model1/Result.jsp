<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="model1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="an" class="model1.Questions" scope="application">
</jsp:useBean>
<%
    Users us = (Users)session.getAttribute("user");
    if (us != null) {
        out.println(us.getUsername()+" : 欢迎您的到来!");
    }
    else {
        out.println("请您先登陆，谢谢");
        out.println("<br>经过5秒之后，将自动返回Login.jsp");
        response.setHeader("Refresh","5;URL=Login.jsp");
    }
%>
<%
    Connection con;
    Statement sql;
    ResultSet rs;

    Conn conn = new Conn();
    con = conn.getCon();
    //3.1创建Statement对象
    sql = con.createStatement();
    //3.2执行SQL语句
    rs = sql.executeQuery("SELECT * FROM question");

    int num = 0;
    int i=1;
    while(rs.next()){
        String s = request.getParameter("que"+i);
        if(s == null){
            s="";
        }
        if(s.equals("a")){
            an.setAnswer1(rs.getString("answer1"));
            an.setRightanswer(rs.getString("right_answer"));
            if(an.getRightanswer().equals(an.getAnswer1())) num++;
        }else if(s.equals("b")){
            an.setAnswer2(rs.getString("answer2"));
            an.setRightanswer(rs.getString("right_answer"));
            if(an.getRightanswer().equals(an.getAnswer2())) num++;
        }
        i++;
    }
%>
<p>
    您得了<%=num%>分
<form action="Result.jsp" method="POST">
    <input type="submit" name="del" value="退出"/><br/>
</form>
<%
    request.setCharacterEncoding("UTF-8");
    String del = request.getParameter("del");
    if(del!=null){
        session.invalidate();
        response.sendRedirect("Login.jsp");
    }
%>
</body>
</html>
