package model1;

/**
 * Created by wuyiwen on 2017/11/12.
 */
public class Users {


 //revert 后

    private String password;
    private String username;

    public Users() {
        password="";
        username="";
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}