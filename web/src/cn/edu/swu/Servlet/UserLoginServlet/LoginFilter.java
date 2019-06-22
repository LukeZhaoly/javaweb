package cn.edu.swu.Servlet.UserLoginServlet;

import java.io.IOException;

import java.util.Arrays;
import java.util.List;


import javax.servlet.FilterChain;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.domain.Privilege;
import cn.edu.swu.domain.User;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter extends HttpFilter {

    private String redirectUrl;
    private String uncheckedUrls;
    //private String sessionkey;
    public void init() {
		ServletContext servletContext=getFilterConfig().getServletContext();
		redirectUrl=servletContext.getInitParameter("redirectPage");
		uncheckedUrls=servletContext.getInitParameter("uncheckUrls");
		//sessionkey=servletContext.getInitParameter("sessionkey");
	}
	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		
		String servletPath = request.getServletPath();	
		//检查获取的URL是否需要检查，若是直接放行，否则，对比		
		List<String> urls=Arrays.asList(uncheckedUrls.split(","));//分割
		//System.out.println(urls.toString());
		if(urls.contains(servletPath)) {
			filterChain.doFilter(request, response);
			return;
		}		
		//否则，从session中获取对应的值，若值不存在，重定向到redirectUrl
		User user=(User) request.getSession().getAttribute("user");
		if(user==null ) {
			response.sendRedirect(request.getContextPath()+redirectUrl);
			return;
		}
		//若存在，则取出用户的权限
//		List<Privilege> privileges=user.getPrivileges();
//		Privilege privilege=new Privilege(null,servletPath);
//		if(privileges.contains(privilege)) {
//			filterChain.doFilter(request, response);
//			return;
//		}
//		response.sendRedirect(request.getContextPath()+"/Admin/403.jsp");
//		return;
		filterChain.doFilter(request, response);
		
	}
   

}
