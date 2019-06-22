package cn.edu.swu.Servlet.UserLoginServlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cn.edu.swu.DAO.PrivilegeDao;
import cn.edu.swu.DAO.UserDao;
import cn.edu.swu.Impl.PrivilegeDaoImpl;
import cn.edu.swu.Impl.UserImpl;
import cn.edu.swu.domain.CriteriaUser;
import cn.edu.swu.domain.PageBeanList;
import cn.edu.swu.domain.Privilege;
import cn.edu.swu.domain.User;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CriteriaUser cUser=new CriteriaUser();
	private UserDao uDao=new UserImpl();
	private PrivilegeDao pDao=new PrivilegeDaoImpl();
	private PageBeanList<User> userPageBeanList=new PageBeanList<User>();

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//获取名字
		String servletPath=request.getServletPath();
		//System.out.println(servletPath);
		String methodName=servletPath.substring(1);
		methodName=methodName.substring(0, servletPath.length()-8);
		System.out.println(methodName);
		try {
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			
			method.invoke(this,request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String user = request.getParameter("username");
		String pwd =request.getParameter("password");
		String code=request.getParameter("code");
		String checkcode=(String) request.getSession().getAttribute("checkCode");
		if (code.equalsIgnoreCase(checkcode)) {			
			User user2=new User();
			try {
				user2=uDao.query(user, pwd);
				//user2=uDao.getUser(user2.getUid());
				
				if (user2!=null) {
					HttpSession session = request.getSession();
					session.setAttribute("user", user2);
					response.sendRedirect(request.getContextPath()+"/Admin/main.jsp");
				} else {			
					response.sendRedirect(request.getContextPath()+"/Admin/index.jsp");
				}	
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}else {
			
			response.sendRedirect(request.getContextPath()+"/Admin/index.jsp");
		}
		
	}
	
	private void Userquery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String name=request.getParameter("username");
		cUser.setUsername(name);
		List<User> users=new ArrayList<User>() ;
		users=uDao.queryForList(cUser);
		int pc=1;
		String paramPC=request.getParameter("pc");
		if(paramPC!=null && !paramPC.trim().isEmpty()) {
			pc=Integer.parseInt(paramPC);
		}
		String url=request.getRequestURI()+"?";
		userPageBeanList=uDao.findUserPage(pc);
		userPageBeanList.setUrl(url);
		userPageBeanList.setBeanList(users);
		request.setAttribute("pbList", userPageBeanList);
		request.getRequestDispatcher("/Admin/UserInfo.jsp").forward(request, response);
	}
	
	private void Userdelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int uid=Integer.parseInt(request.getParameter("uid"));
		uDao.delete(uid);
		response.sendRedirect("getPrivileges.action");
	}
	
	private void Userupdate(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String newpwd=request.getParameter("newpwd");
		User user=(User)request.getSession().getAttribute("user");
		user.setPassword(newpwd);
		uDao.update(user);
		request.getSession().setAttribute("user", user);
		response.sendRedirect(request.getContextPath()+"/Admin/index.jsp");	
	}
	
	private void getPrivileges(HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int uid=Integer.parseInt(request.getParameter("uid"));
		request.setAttribute("userpri",uDao.getUser(uid) );
		request.setAttribute("privileges", pDao.getPrivileges());
		request.getRequestDispatcher("/Admin/PriInfo.jsp").forward(request, response);
	}
	
	private void updatePri(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int uid=Integer.parseInt(request.getParameter("uid"));
		String[] privileges_id=request.getParameterValues("privilege");	
		//System.out.println(java.util.Arrays.toString(privileges_id));
		uDao.updatePri(uid, privileges_id);
		response.sendRedirect("getPage.action");
	}
	
	private void getPage(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int pc=1;
		String paramPC=request.getParameter("pc");
		if(paramPC!=null && !paramPC.trim().isEmpty()) {
			pc=Integer.parseInt(paramPC);
		}
		String url=request.getRequestURI()+"?";
		userPageBeanList=uDao.findUserPage(pc);
		userPageBeanList.setUrl(url);
		request.setAttribute("pbList", userPageBeanList);
		request.getRequestDispatcher("/Admin/UserInfo.jsp").forward(request, response);
	}
	
	private void add(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		User user=new User(username,password,phone);
		long c=uDao.getWithName(username);
		if (c<=0) {
			uDao.save(user);
			System.out.println("2");
			response.sendRedirect(request.getContextPath()+"/Admin/index.jsp");	
		}else {
			String meg="该用户已存在";
			System.out.println("1");
			request.setAttribute("meg", meg);
			request.getRequestDispatcher("/Admin/index.jsp").forward(request, response);;
		}
	}
	

}
