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
@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionServiceInterface questionService = new QuestionService();
        int id=Integer.parseInt(request.getParameter("ID"));
        questionService.deleteQuestion(id);
            request.getRequestDispatcher("/Model2/Admin.jsp").forward(request, response);
        }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
