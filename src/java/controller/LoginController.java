package controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.AuthenService;
import util.Constant;

/**
 *
 * @author lenovo
 */
public class LoginController extends HttpServlet {

     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Check auto login
        //Check session 
        
        HttpSession session = request.getSession(false);
        
        if(session!=null&&session.getAttribute("username")!=null){
            request.getRequestDispatcher(Constant.Path.HOME)
                    .forward(request, response);
            return;
        }
        
        
        //Check cookie
        Cookie [] cookies = request.getCookies();
        
        if(cookies!=null){
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    
                    session = request.getSession(true);
                    session.setAttribute("username", cookie.getValue());
                    
                    request.getRequestDispatcher(Constant.Path.HOME)
                            .forward(request, response);
                    return;
                }
            }
       
        }
        
        request.getRequestDispatcher(Constant.Path.LOGIN).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        
        String password = request.getParameter("password");
        
        boolean isRememberMe = false;
        String remember = request.getParameter("remember");
        
        if("on".equals(remember)){
            isRememberMe = true;
        }
        String alertMsg="";
        
        if(username.isEmpty() || password.isEmpty()){
            alertMsg = "Username and password can't be empty!";
            request.setAttribute("alert", alertMsg);
            request.getRequestDispatcher(Constant.Path.LOGIN).forward(request, response);
            return;
        }
      
        AuthenService service = new AuthenService();
        
        boolean isSuccess = service.login(username, password);
        
        
        if(isSuccess){
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);

            if(isRememberMe){
                saveRemeberMe(response, username);
            }
           
            request.getRequestDispatcher(Constant.Path.HOME).forward(request, response);
        }else{
            alertMsg = "Username or password isn't correct";
            request.setAttribute("alert", alertMsg);
            request.getRequestDispatcher(Constant.Path.LOGIN).forward(request, response);
        }
    }
    
    private void saveRemeberMe(HttpServletResponse response, String username){
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(30*60);
        response.addCookie(cookie);
    }
}
