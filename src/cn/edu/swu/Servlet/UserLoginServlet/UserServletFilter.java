package cn.edu.swu.Servlet.UserLoginServlet;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServletFilter extends HttpFilter   {
	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		//获取servletPath;
		String servletPath = request.getServletPath();
		
	}

}
