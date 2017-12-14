package model2.service;

import model2.dao.Interface.QuestionDaoInterface;
import model2.dao.QuestionDao;
import model2.domain.Question;
import model2.service.Interface.QuestionServiceInterface;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by wuyiwen on 2017/12/10.
 */
public class QuestionService implements QuestionServiceInterface{
    private QuestionDaoInterface questionDao;

    public QuestionService() {
        questionDao = new QuestionDao();
    }


    //添加题目
    public void addQuestion(String qustionname, String answer1, String answer2, String rightanswer) {
        questionDao.addQuestion(qustionname,answer1,answer2,rightanswer);
    }

    //删除题目
    @Override
    public void deleteQuestion(int id) {
        questionDao.deleteQuestion(id);

    }

    //修改题目
    @Override
    public void modifyQuestion(int id,String qustionname, String answer1, String answer2, String rightanswer) {
        questionDao.updateQuestion(id,qustionname, answer1, answer2,rightanswer);
    }

    //得到题目
    @Override
    public List<Question> getQuestion() throws SQLException{
        return questionDao.getQuestion();
    }

    //得到一个题目
    @Override
    public Question getOneQuestion(int id) throws SQLException {
        return questionDao.getOneQuestion(id);
    }
}
