package WeChatAC;

import Utils.Lg;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用于备份公司信息表的数据到xls
 */
@WebServlet(urlPatterns = "/WeChatForCode")
public class WeChatForCode extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String json = request.getParameter("json");


        Lg.e("收到：",json);

        request.setAttribute("feedback", json);
        request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }


}
