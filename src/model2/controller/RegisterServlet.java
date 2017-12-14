package model2.controller;


import model2.service.UserService;
import model2.util.MD5Util;
import model2.util.CheckMatch;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wuyiwen on 2017/12/9.
 */
@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("Name");
        String password = request.getParameter("Password");

        System.out.print(username);
        System.out.print(password);
        if(!CheckMatch.checkUsername(username,2,16)){
            username=null;
        }
        if(!CheckMatch.checkPasswordname(password,3,16)){
            password=null;
        }
        if (username != null && password != null) {
                String registerInfo = null;
                UserService userService = new UserService();
                try {
                    registerInfo = userService.register(username, MD5Util.md5Encode(password));
                    System.out.print(MD5Util.md5Encode(password));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                System.out.print(username);
                System.out.print(password);
                if (registerInfo.equals("注册成功")) {
                    request.setAttribute("registerInfo", registerInfo);
                    request.getRequestDispatcher("/Model2/Register.jsp").forward(request, response);
                } else {
                    request.setAttribute("registerInfo", registerInfo);
                    request.getRequestDispatcher("/Model2/Register.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("registerInfo", "不符合命名规范或命名规范");
                request.getRequestDispatcher("/Model2/Register.jsp").forward(request, response);
            }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
