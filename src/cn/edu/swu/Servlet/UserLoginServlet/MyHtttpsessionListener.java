package cn.edu.swu.Servlet.UserLoginServlet;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class MyHtttpsessionListener implements HttpSessionListener {

    
 	private int userCounts=0;
    	
    public void sessionCreated(HttpSessionEvent se)  { 
         userCounts++;
         //System.out.println("create");
         se.getSession().getServletContext().setAttribute("userCounts", userCounts);
    }

	
    public void sessionDestroyed(HttpSessionEvent se)  { 
        if (userCounts>0) {			
        	userCounts--;//用户数-1
		} 
         //System.out.println("destroy");
         se.getSession().getServletContext().setAttribute("userCounts", userCounts);
    }
	
}
