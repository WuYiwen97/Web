package model2.util;

import java.security.MessageDigest;

/**
 * Created by wuyiwen on 2017/12/9.
 */
public class MD5Util {
    /***
     * MD5加密
     *
     * @return 返回32位md5码
     */
    public static String md5Encode(String inputString) throws Exception {
        MessageDigest md5;
        try {
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
            return "";
        }

        byte[] byteArray = inputString.getBytes("UTF-8");
        byte[] md5Bytes = md5.digest(byteArray);
        StringBuilder hexValue = new StringBuilder();
        for (byte md5Byte : md5Bytes) {
            int val = ((int) md5Byte) & 0xff;
            if (val < 16) {
                hexValue.append("0");
            }
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }

}
