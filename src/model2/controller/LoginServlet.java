package model2.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


import java.sql.SQLException;

import model2.domain.User;
import model2.service.UserService;
import model2.util.MD5Util;

/**
 * Created by wuyiwen on 2017/12/5.
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //PrintWriter out = response.getWriter();  //干嘛用的？
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("Name");
        String pwd = request.getParameter("Password");

        System.out.print(name);
        HttpSession session = request.getSession();
        if (name != null && pwd!= null) {
            User user=null;
            UserService userservice =new UserService();
            try {
                user=userservice.login(name, MD5Util.md5Encode(pwd));
            }
            catch (Exception e){
                e.printStackTrace();
            }
            if(user!=null){
                if(name.equals("admin")) {
                    session.setAttribute("user", user);
                    response.sendRedirect("/javaweb/Model2/Admin.jsp");
                }
                else {
                    session.setAttribute("user", user);
                    response.sendRedirect("/javaweb/Model2/Member.jsp");
                }
            }
            else
                response.sendRedirect("/javaweb/Model2/LoginError.jsp");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}