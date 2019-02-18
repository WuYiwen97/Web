package model2.controller;

import model2.domain.Question;
import model2.service.Interface.QuestionServiceInterface;
import model2.service.QuestionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by wuyiwen on 2017/12/12.
 */
@WebServlet(name = "ModifyServlet")
public class ModifyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionServiceInterface questionService = new QuestionService();
        int id=Integer.parseInt(request.getParameter("ID"));
        String questionname = request.getParameter("questionname");
        String answer1 = request.getParameter("answer1");
        String answer2 = request.getParameter("answer2");
        String rightanswer = request.getParameter("rightanswer");
        if(questionname !=null && answer1 !=null && answer2 !=null && rightanswer !=null)
        {
            questionService.modifyQuestion(id, questionname, answer1, answer2,rightanswer);
            request.getRequestDispatcher("/Model2/Admin.jsp").forward(request, response);
        }


    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }
}
