package model1;

/**
 * Created by wuyiwen on 2017/11/13.
 */
public class Questions {
    private String questionname;
    private String answer1;
    private String answer2;
    private String rightanswer;


    public Questions() {
        questionname="";
        answer1="";
        answer2="";
        rightanswer="";

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
