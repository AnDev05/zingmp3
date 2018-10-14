package controller;

import dao.LocaleDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SingerModel;
import service.SingerService;
import util.Constant;

/**
 *
 * @author lenovo
 */
public class SingerProfileController extends HttpServlet {

    SingerService singerService;

    public SingerProfileController() {
        this.singerService = new SingerService();
    }
    
    private void processRequest(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
        LocaleDao localeDao = new LocaleDao();
        request.setAttribute("allCity", localeDao.getAllCity());
        request.setAttribute("allCountry",  localeDao.getAllCountry());
                
        request.getRequestDispatcher(Constant.Path.SINGER_PROFILE).forward(request, response);
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String company = request.getParameter("company");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int city = Integer.parseInt(request.getParameter("city"));
        int country = Integer.parseInt(request.getParameter("country"));
        String desc = request.getParameter("desc");
      
        SingerModel model = new SingerModel(company, gender, firstName,
                lastName, email, phone, city, country, desc);
        boolean result = singerService.save(model,request.getSession());
        request.setAttribute("success", result);
        processRequest(request, response);
    }
}
