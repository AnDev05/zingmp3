package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.Constant;

/**
 *
 * @author lenovo
 */
public class LogoutController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        session.removeAttribute(Constant.SESSION_USERNAME); //remove session
        
        Cookie[] cookies = request.getCookies();
        
        if(cookies!=null){
            for (Cookie cookie : cookies) {
                if(Constant.COOKIE_REMEMBER.equals(cookie.getName())){
                    cookie.setMaxAge(0); // <=> remove cookie
                    response.addCookie(cookie); // add again
                    break;
                }
            }
        }
        
        request.getRequestDispatcher(Constant.Path.LOGIN).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
    }
    

   

}
