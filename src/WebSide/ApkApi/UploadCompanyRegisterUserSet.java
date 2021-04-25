package WebSide.ApkApi;

import Bean.Company;
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
 * 用于更新时间控制表的当前时间
 */
@WebServlet(urlPatterns = "/UploadCompanyRegisterUserSet")
public class UploadCompanyRegisterUserSet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("json");
        String code = request.getParameter("code");
        String can = request.getParameter("can");
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        CompanyDao webDao = new CompanyDao();
        boolean ok =webDao.changeCompanyRegister(id,code,("1".equals(can)?"0":"1"));
//        if (!ok){
            Lg.e("更新成功");
            List<Company> list2 = webDao.findCompanyRegister(id);
            if (list2.size() > 0) {
                request.setAttribute("company_register", list2);
                request.getRequestDispatcher("MGM/RegisterUserList4AppID.jsp").forward(request, response);
            } else {
                request.setAttribute("feedback", "该公司无注册码信息");
                request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);
            }
//        }else{
//            Lg.e("更新失败。。。");
//            request.setAttribute("feedback", "删除失败");
//            request.getRequestDispatcher("/MGM/errorHttp.jsp").forward(request, response);
//        }
//        List<StatisticalBean> list2 = webDao.updataStatis(statisticalBean);
//        if (list2.size()>0){
//            response.sendRedirect("errorHttp.jsp");
//        }else{
//            boolean ok = webDao.addCompany(company);
//            if (ok) {
//                response.sendRedirect("MGM/CompanyList.jsp");
//            } else {
//                response.sendRedirect("errorHttp.jsp");
//            }
//        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
