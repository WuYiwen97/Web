package model2.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by wuyiwen on 2017/12/14.
 */
public class CheckMatch {

    public static boolean startCheck(String reg, String string)
    {
        boolean tem=false;

        Pattern pattern = Pattern.compile(reg);
        Matcher matcher=pattern.matcher(string);

        tem=matcher.matches();
        return tem;
    }
    /**
     * 检验用户名 
     * 取值范围为a-z,A-Z,0-9,"_",汉字，不能以"_"结尾 
     * 用户名有最小长度和最大长度限制，比如用户名必须是2-16位
     * */
    public static boolean checkUsername(String username, int min, int max)
    {
        String regex="[\\w\u4e00-\u9fa5]{"+min+","+max+"}(?<!_)";
        return startCheck(regex,username);
    }

    //验证密码，密码必须是3-16位的英文和数字
    public static boolean checkPasswordname(String username, int min, int max)
    {
        String regex="[A-Za-z0-9]{"+min+","+max+"}(?<!_)";
        return startCheck(regex,username);
    }


}
