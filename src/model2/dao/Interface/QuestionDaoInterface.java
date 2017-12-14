package model2.dao.Interface;

import model2.domain.Question;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by wuyiwen on 2017/12/10.
 */
public interface QuestionDaoInterface {


    /**
     * 得到题目列表
     */
     List<Question> getQuestion() throws SQLException;

    /**
     * 得到一个题目
     */
    Question getOneQuestion(int id) throws SQLException;

    /**
     * 添加题目
     */
     int addQuestion(String qustionname, String answer1, String answer2,String rightanswer);

    /**
     * 删除题目
     */
    int deleteQuestion(int id) ;

    /**
     * 修改题目信息
     */
    int updateQuestion(int id,String qustionname, String answer1, String answer2,String rightanswer) ;

    /**
     * 获取全部题目数????
     */
    int getNumber() throws SQLException;
}
