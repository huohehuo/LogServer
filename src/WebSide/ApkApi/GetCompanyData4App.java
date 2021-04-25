package WebSide.ApkApi;

import Bean.Company;
import Bean.RegisterCodeBean;
import Utils.CommonJson;
import Utils.Lg;
import WebSide.CompanyDao;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *      app端查找注册码是否可用
 */
@WebServlet(urlPatterns = "/GetCompanyData4App")
public class GetCompanyData4App extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String parameter = request.getParameter("json");
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        CompanyDao run = new CompanyDao();
        List<Company> list2 = run.findCompany(parameter);
        if (list2.size() > 0) {
            response.getWriter().write(CommonJson.getCommonJson(true,gson.toJson(list2.get(0))));
        }else{
            response.getWriter().write(CommonJson.getCommonJson(false,""));
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
