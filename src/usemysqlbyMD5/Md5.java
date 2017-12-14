package usemysqlbyMD5;

import java.security.MessageDigest;

/**
 * Created by wuyiwen on 2017/11/19.
 */
public class Md5 {
    StringBuffer buf=new StringBuffer("");

    public Md5(){
    }

    public String toMD5(String plainText){
        try{
            //生成实现指定摘要算法的MessageDigest对象。
            MessageDigest md=MessageDigest.getInstance("MD5");
            //使用指定的字节数组更新摘要
            md.update(plainText.getBytes());
            //通过执行诸如填充之类的最终操作完成哈希计算。
            byte b[] =md.digest();
            //生成具体的md5密码到buf数组
            int i;
            ;
            for(int offset=0;offset<b.length;offset++){
                i=b[offset];
                if(i<0){
                    i+=256;
                }
                if(i<16){
                    buf.append("0");
                }
                buf.append(Integer.toHexString(i));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return buf.toString();
    }
}
