package WebSide;

import Bean.Company;
import Utils.Lg;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class pl_find
 */
@WebServlet(urlPatterns = "/GetStatisticalLiveDataByTime")
public class GetStatisticalLiveDataByTime extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {

            String time = request.getParameter("search");
            Lg.e(getClass().getSimpleName()+"接收",time);
            request.setAttribute("feedback", time);
            request.getRequestDispatcher("/MGM/ActiveManageList.jsp").forward(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
