package WeChatAC;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.util.Arrays;

/**
 * 用于备份公司信息表的数据到xls
 */
@WebServlet(urlPatterns = "/WeChatScanTest")
public class WeChatScanTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        String json = request.getParameter("json");
        request.setAttribute("feedback", json);
        request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }




    public static final String  tooken = "自行定义"; //开发者自行定义Tooken
    public static boolean checkSignature(String signature,String timestamp,String nonce){
        //1.定义数组存放tooken，timestamp,nonce
        String[] arr = {tooken,timestamp,nonce};
        //2.对数组进行排序
        Arrays.sort(arr);
        //3.生成字符串
        StringBuffer sb = new StringBuffer();
        for(String s : arr){
            sb.append(s);
        }
        //4.sha1加密,网上均有现成代码
        String temp = getSha1(sb.toString());
        //5.将加密后的字符串，与微信传来的加密签名比较，返回结果
        return temp.equals(signature);
    }

    public static String getSha1(String str){
        if(str==null||str.length()==0){
            return null;
        }
        char hexDigits[] = {'0','1','2','3','4','5','6','7','8','9',
                'a','b','c','d','e','f'};
        try {
            MessageDigest mdTemp = MessageDigest.getInstance("SHA1");
            mdTemp.update(str.getBytes("UTF-8"));
            byte[] md = mdTemp.digest();
            int j = md.length;
            char buf[] = new char[j*2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                buf[k++] = hexDigits[byte0 >>> 4 & 0xf];
                buf[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(buf);
        } catch (Exception e) {
            // TODO: handle exception
            return null;
        }
    }
}
