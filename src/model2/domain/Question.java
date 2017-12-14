package model2.domain;

/**
 * Created by wuyiwen on 2017/12/10.
 */
public class Question {
    private int id;
    private String questionname;
    private String answer1;
    private String answer2;
    private String rightanswer;


    public Question() {
    }

    public Question(int id,String questionname,String answer1,String answer2,String rightanswer) {
        this.id=id;
        this.questionname=questionname;
        this.answer1=answer1;
        this.answer2=answer2;
        this.rightanswer=rightanswer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestionname() {
        return questionname;
    }

    public void setQuestionname(String questionname) {
        this.questionname = questionname;
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    public String getAnswer2() {
        return answer2;
    }

    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    public String getRightanswer() {
        return rightanswer;
    }

    public void setRightanswer(String rightanswer) {
        this.rightanswer = rightanswer;
    }
}
