package cn.edu.swu.Servlet.ArticleServlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.DAO.GbookDao;
import cn.edu.swu.Impl.GbookDaoImpl;
import cn.edu.swu.domain.Gbook;

/**
 * Servlet implementation class GuestBook
 */
public class GuestBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GbookDao gdo=new GbookDaoImpl();
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doPost(req, resp);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String servletPath = request.getServletPath();
		System.out.println(servletPath);
		//去掉/和.ly
		String methodName=servletPath.substring(1);
		methodName=methodName.substring(0, servletPath.length()-4);
		System.out.println(methodName);
		try {
			//利用反射调用methodName对应的方法
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Admin/error.jsp");
		} 
		
		
	}
	
	private void insert(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String guestbook=request.getParameter("guestbook");
		String guestuser=request.getParameter("guestuser");
		Gbook gbook=new Gbook(guestbook, guestuser);
		gdo.save(gbook);
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		
	}
	
	private void get(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<Gbook> gbooks=gdo.secList();
		request.setAttribute("gbooks", gbooks);
		request.getRequestDispatcher("/Admin/gbook.jsp").forward(request, response);
	}
	
	private void delete(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		gdo.delete(id);
		response.sendRedirect(request.getContextPath()+"/get.ly");
	}

}
