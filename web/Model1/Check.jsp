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
<%
    Users us = (Users)session.getAttribute("user");
    if (us != null) {
        out.println(us.getUsername()+" : 欢迎您的到来!");
    }else {
        out.println("请您先登陆，谢谢");
        out.println("<br>经过3秒之后，将自动返回Login.jsp");
        response.setHeader("Refresh","3;URL=Login.jsp");
    }
%>

<jsp:useBean id="q" class="model1.Questions" scope="application">
</jsp:useBean>
<form action="Result.jsp" method="post" name=form>
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

        int i=1;
        while(rs.next()){

            out.println("<p>");
            q.setQuestionname(rs.getString("q_name"));
            q.setAnswer1(rs.getString("answer1"));
            q.setAnswer2(rs.getString("answer2"));

            out.print(q.getQuestionname());
            out.println("<br />");
            out.println(" <tr><td>"+"<input type=radio name=que"+i+" value=a>"+q.getAnswer1()+"</td></tr>");
            out.println(" <tr><td>"+"<input type=radio name=que"+i+" value=b>"+q.getAnswer2()+"</td></tr>");
            i++;
        }
    %>
    <p>
        <input type="submit" name="submit" value="提交答案">
</form>

</body>
</html>