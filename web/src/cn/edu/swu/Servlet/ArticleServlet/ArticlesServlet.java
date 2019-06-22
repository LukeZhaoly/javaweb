package cn.edu.swu.Servlet.ArticleServlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import cn.edu.swu.DAO.ArticleDao;
import cn.edu.swu.DAO.FileUploadDownDao;
import cn.edu.swu.Impl.ArticleImpl;
import cn.edu.swu.Impl.FileUploadDownImpl;
import cn.edu.swu.Tools.CreateHtmlUtils;
import cn.edu.swu.domain.Article;
import cn.edu.swu.domain.CriteriaArticle;
import cn.edu.swu.domain.FileUploadBean;
import cn.edu.swu.domain.PageBeanList;



public class ArticlesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CreateHtmlUtils cUtils=new CreateHtmlUtils();
	//模板html的地址
	private static String FILE_PATH="/templete.jsp";
	private static String DISR_PATH="/";
	
	private  ArticleDao ad=new ArticleImpl();
	private FileUploadDownDao fud=new FileUploadDownImpl();
	private PageBeanList<Article> beanList=new PageBeanList<Article>();
	
	/**
	 * 获取不同的method，调用相应的方法
	 * 
	 */
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 利用反射获取方法名
		 * 
		 */
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//1.调用getServletPath()得到方法/insertArticle.do
		String servletPath = request.getServletPath();
		//去掉/和.do
		String methodName=servletPath.substring(1);
		methodName=methodName.substring(0, servletPath.length()-4);
		
		try {
			//利用反射调用methodName对应的方法
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Admin/error.jsp");
		} 
				
	
	}
	/**
	 * 修改信息前的判断，
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	
	private void edit(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String forpath="error.jsp";
		String id=request.getParameter("id");
		
		Article article=ad.getArticle(Integer.parseInt(id));
		
		try {
			if(article!=null) {
				forpath="/Admin/Update.jsp";
				request.setAttribute("article", article);
			}
		} catch (Exception e) {}
		request.getRequestDispatcher(forpath).forward(request, response);
	}

	/**
	 * 查询数据库信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<Article> articles=new ArrayList<Article>();
		String Title=request.getParameter("title2");
		String status=request.getParameter("status");
		String Publisher=request.getParameter("Publisher");
		String UpdateTime=request.getParameter("UpdateTime");
		String Comments=request.getParameter("Comments");
		
		CriteriaArticle ca=new CriteriaArticle(Title,status,Publisher,UpdateTime,Comments);
		
		articles=ad.getArticles(ca);
		int pc=1;
		String paramPC=request.getParameter("pc");
		if(paramPC!=null && !paramPC.trim().isEmpty()) {
			pc=Integer.parseInt(paramPC);
		}
		String url=request.getRequestURI()+"?";
		beanList=ad.getArticlePage(pc);
		beanList.setUrl(url);
		beanList.setBeanList(articles);
		request.setAttribute("pbList",beanList);
		request.getRequestDispatcher("/Admin/design.jsp").forward(request, response);
	}
	
	
	/**
	 * 
	 * 删除数据库的一条记录
	 * 
	 */

	private void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String ID=request.getParameter("ID");
		int id=Integer.parseInt(ID);
		Article a=new Article();
		a=ad.getArticle(id);
		fud.Delete(a.getTitle());
		ad.DeleteArticle(id);
		response.sendRedirect("getPage.do");
		//request.getRequestDispatcher("design.jsp").forward(request, response);
	}

	
	
	/**
	 * 
	 * 跟新数据库中一条记录的信息
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String sp=request.getServletPath();
		System.out.println(sp);
		Date d=new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		String f = df.format(d);
		String title=request.getParameter("title");
		String oldtitle=request.getParameter("oldtitle");
		String Publisher=request.getParameter("Publisher");
		
		String comments=request.getParameter("comments");
		int id=Integer.parseInt(request.getParameter("id"));
		if(!oldtitle.equalsIgnoreCase(title)) {
			long cout=ad.getArticlewithName(title);
			if(cout>0){
				//显示name占用
				request.setAttribute("message", "名称"+title+"已经存在");
				request.getRequestDispatcher("Admin/update.jsp").forward(request, response);
			}
		}
		Article article=new Article();
		//模板文件路径
		String filePath=getServletContext().getRealPath(FILE_PATH);
		String dispath=ad.getArticle(id).getPath();	
		article.setTitle(title);
		article.setComments(comments);
		article.setUpdateTime(f);
		try {
			cUtils.MakeHtml(filePath, dispath, title, comments);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ad.UpdateArticle(article);
		response.sendRedirect(request.getContextPath()+"/getPage.do");
	}
	
	
	/**
	 * 
	 * 新增一个文章信息，并生成html文件
	 * @param request
	 * @param response
	 * @throws Exception
	 */

	private void add(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String title=request.getParameter("title1");//文件名字
		String auth=request.getParameter("author");//文件作者
		String content=request.getParameter("content");//文件内容
		String flagstr=request.getParameter("colId");//文件分类
		Date d=new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date=df.format(d);
		/*
		 * 得到生成的html文件需要放入的目录
		 */
		String disrPath=getServletContext().getRealPath(DISR_PATH);
		if (flagstr.equals("study")) {
			disrPath=disrPath+"study//";
		}else {
			disrPath=disrPath+"life//";
		}
		System.out.println(disrPath);
		//获取模板文件的路径
		String filePath=getServletContext().getRealPath(FILE_PATH);
		Article article=new Article(title,flagstr,"no",0,auth,date,content,disrPath);
		ad.InsertArticle(article); 
		System.out.println(filePath);
		try {
			cUtils.MakeHtml(filePath,disrPath,title,content);
			response.sendRedirect(request.getContextPath()+"/Admin/main.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
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
		beanList=ad.getArticlePage(pc);
		beanList.setUrl(url);
		request.getSession().setAttribute("pbList",beanList);
		response.sendRedirect(request.getContextPath()+"/Admin/design.jsp");
	}
	
	private void getAll(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String flagstr=request.getParameter("flagstr");
		String path="/";
		if (flagstr!=null&&!flagstr.equals("time")) {
			path=path+flagstr+"/";
			flagstr="%"+flagstr+"%";	
		}else{
			flagstr="%%";
		}
		System.out.println(flagstr);
		List<Article> articles=ad.findArticles(flagstr);
		request.setAttribute("Experience", articles);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private void listTime(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		CriteriaArticle ca=new CriteriaArticle();
		List<Article> articles=ad.getArticles(ca);
		request.setAttribute("list", articles);
		request.getRequestDispatcher("/time.jsp").forward(request, response);
	}
}
