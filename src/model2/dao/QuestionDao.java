package model2.dao;

import model2.dao.Interface.QuestionDaoInterface;
import model2.domain.Question;
import model2.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wuyiwen on 2017/12/10.
 */
public class QuestionDao implements QuestionDaoInterface{

    // execute 的返回值是影响的记录条数
    private Connection connection;

    //创建实例时连接数据库
    public QuestionDao() {
        connection = DBUtil.getConnection();
    }

    //得到全部题目
    @Override
    public List<Question> getQuestion() throws SQLException {
        PreparedStatement statement = null;
        List<Question> list = new ArrayList<>();
        try {
            statement = connection.prepareStatement("select * from question order by q_id");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Question question = new Question();
                question.setId(resultSet.getInt("q_id"));
               //System.out.print(question.getId());
                question.setQuestionname(resultSet.getString("q_name"));
                question.setAnswer1(resultSet.getString("answer1"));
                question.setAnswer2(resultSet.getString("answer2"));
                question.setRightanswer(resultSet.getString("right_answer"));
                list.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //得到一个题目
    @Override
    public Question getOneQuestion(int id) throws SQLException {
        PreparedStatement statement = null;
        Question question=null;
        try {
            statement = connection.prepareStatement("SELECT * from question where q_id = ?");
            statement.setString(1, String.valueOf(id));
            ResultSet resultSet=statement.executeQuery();
            if (resultSet.next()) {
                question= new Question();
                question.setId(resultSet.getInt("q_id"));
                //System.out.print(question.getId());
                question.setQuestionname(resultSet.getString("q_name"));
                question.setAnswer1(resultSet.getString("answer1"));
                question.setAnswer2(resultSet.getString("answer2"));
                question.setRightanswer(resultSet.getString("right_answer"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return question;
    }

    //添加题目
    @Override
    public int addQuestion(String questionname, String answer1, String answer2,String rightanswer)  {
        int i=0;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("insert into question(q_name,answer1,answer2,right_answer) values(?,?,?,?) ");
            statement.setString(1, questionname);
            statement.setString(2, answer1);
            statement.setString(3, answer2);
            statement.setString(4, rightanswer);
            i=statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;

    }

    //删除题目
    @Override
    public  int  deleteQuestion(int id)  {
        int i=0;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("delete from question where q_id = ?");
            statement.setString(1, String.valueOf(id));
            i=statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    //修改题目
    @Override
    public int  updateQuestion(int id,String questionname, String answer1, String answer2,String rightanswer){
        int i=0;
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("update question set q_name = ? , answer1 = ? ,answer2 = ? ,right_answer=? where q_id = ? ");
            statement.setString(1, questionname);
            statement.setString(2, answer1);
            statement.setString(3, answer2);
            statement.setString(4,rightanswer);
            statement.setString(5, String.valueOf(id));
            i=statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
           // throw new RuntimeException(e);
        }
       return i;
    }

    //题目数量
    @Override
    public int getNumber() throws SQLException {
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("select count(*) from question");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
}
