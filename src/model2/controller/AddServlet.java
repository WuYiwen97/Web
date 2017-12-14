package model2.controller;

import model2.service.Interface.QuestionServiceInterface;
import model2.service.QuestionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wuyiwen on 2017/12/12.
 */
@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionServiceInterface questionService = new QuestionService();
        String questionname = request.getParameter("questionname");
        String answer1 = request.getParameter("answer1");
        String answer2= request.getParameter("answer2");
        String rightanswer=request.getParameter("rightanswer");
        questionService.addQuestion(questionname, answer1, answer2,rightanswer);
        request.getRequestDispatcher("/Model2/Admin.jsp").forward(request, response);
}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
