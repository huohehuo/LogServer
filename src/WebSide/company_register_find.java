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
@WebServlet(urlPatterns = "/company_register_find")
public class company_register_find extends HttpServlet {
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

            String appid = request.getParameter("json");
            Lg.e("得到公司id", appid);
            if (null == appid || "".equals(appid)) {
                request.setAttribute("feedback", "查询公司信息失败");
                request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);
                return;
            }
            CompanyDao run = new CompanyDao();
//	          	stu.setHid(hid);
            List<Company> list2 = run.findCompanyRegister(appid);
            if (list2.size() > 0) {
                request.setAttribute("company_register", list2);
                request.getRequestDispatcher("MGM/RegisterUserList4AppID.jsp").forward(request, response);
            } else {
                request.setAttribute("feedback", "该公司无注册码信息");
                request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);
            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
