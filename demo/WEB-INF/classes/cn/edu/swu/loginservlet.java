package cn.edu.swu;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class loginservlet implements Servlet{

	public void destroy() {
		
	}

	public ServletConfig getServletConfig() {
		return null;
	}

	public String getServletInfo() {
		return null;
	}

	public void init(ServletConfig config) throws ServletException {
		
		
	}

	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		//System.out.println("request!");
		//System.out.println(request);
		String user =request.getParameter("user");
		String password =request.getParameter("password");
		System.out.println(user);
		String i =request.getParameter("i");
		System.out.println(i);
	//设置响应类型
	//response.setContentType();
		PrintWriter out=response.getWriter();
		out.println(user);
		out.println(password);
	}	
}
