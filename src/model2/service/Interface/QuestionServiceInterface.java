package model2.service.Interface;

import model2.domain.Question;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by wuyiwen on 2017/12/10.
 */
public interface QuestionServiceInterface {

    //添加
    public void addQuestion(String qustionname, String answer1, String answer2,String rightanswer);

    //删除
    public void deleteQuestion(int id);

    //修改
    public void modifyQuestion(int id ,String qustionname, String answer1, String answer2,String rightanswer);

    //全部题目
    List<Question> getQuestion() throws SQLException;

    //一个题目
    Question getOneQuestion(int id) throws SQLException;
}
