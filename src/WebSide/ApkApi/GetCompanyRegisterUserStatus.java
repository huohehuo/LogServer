package WebSide.ApkApi;

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

/**
 *      app端查找注册码是否可用
 */
@WebServlet(urlPatterns = "/GetCompanyRegisterUserStatus")
public class GetCompanyRegisterUserStatus extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String parameter = request.getParameter("json");
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        RegisterCodeBean statisticalBean = gson.fromJson(parameter, RegisterCodeBean.class);
        Lg.e(this.getClass().getSimpleName(),statisticalBean);
        CompanyDao webDao = new CompanyDao();
        boolean ok =webDao.getCompanyRegisterStatus(statisticalBean.AppID,statisticalBean.register_code);
        if (ok){
            response.getWriter().write(CommonJson.getCommonJson(true,"1"));
        }else{
            response.getWriter().write(CommonJson.getCommonJson(true,"0"));
        }
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
