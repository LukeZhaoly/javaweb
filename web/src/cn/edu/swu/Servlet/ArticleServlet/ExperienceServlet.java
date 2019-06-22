package cn.edu.swu.Servlet.ArticleServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.DAO.ArticleDao;
import cn.edu.swu.DAO.FileUploadDownDao;
import cn.edu.swu.Impl.ArticleImpl;
import cn.edu.swu.Impl.FileUploadDownImpl;
import cn.edu.swu.domain.Article;
import cn.edu.swu.domain.CriteriaArticle;
import cn.edu.swu.domain.FileUploadBean;

public class ExperienceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FileUploadBean fileUploadBean=new FileUploadBean();
	private FileUploadDownDao fud=new FileUploadDownImpl();
	private ArticleDao ad=new ArticleImpl();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<Article> articles=new ArrayList<Article>();
		List<FileUploadBean> fBeans=new ArrayList<FileUploadBean>();
		CriteriaArticle ca=new CriteriaArticle();
		articles=ad.getArticles(ca);
		
		request.getSession().setAttribute("Experience", articles);
		
		response.sendRedirect(request.getContextPath()+"/");
	}

}
