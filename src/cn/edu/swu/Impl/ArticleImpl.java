package cn.edu.swu.Impl;
import java.util.ArrayList;
import java.util.List;

import cn.edu.swu.DAO.ArticleDao;
import cn.edu.swu.DAO.DAO;
import cn.edu.swu.domain.Article;
import cn.edu.swu.domain.CriteriaArticle;
import cn.edu.swu.domain.FileUploadBean;
import cn.edu.swu.domain.PageBeanList;

public  class ArticleImpl extends DAO<Article> implements ArticleDao{

	
	public void DeleteArticle(int ID) {
		String sql="delete from article_info where ID=?";
		Update(sql, ID);
	}

	public void InsertArticle(Article article) {
		String sql="insert into article_info(Title,status,click,Publisher,UpdateTime,Comments,path,flagstr) values(?,?,?,?,?,?,?,?)";
		Update(sql, article.getTitle(),article.getStatus(),article.getClick(),article.getPublisher(),article.getUpdateTime(),article.getComments(),article.getPath(),article.getFlagstr());
	}

	public void UpdateArticle(Article article ) {
		String sql="update article_info set Title=?,UpdateTime=?,Comments=? where ID=?";
		Update(sql, article.getTitle(),article.getUpdateTime(),article.getComments(),article.getID());
	}

	public long getArticlewithName(String Title) {
		String sql="select count(*) from article_info where Title=?";
		return getForValue(sql, Title);
	}
	public List<Article> getArticles(CriteriaArticle ca) {
		
			String sql="select  * from article_info ai where Title like ? ";
			return getForList(sql, ca.getTitle());
		
	}

	public Article getArticle(int id) {
		
	String sql = "SELECT * FROM article_info WHERE ID = ?";
		return get(sql, id); 
		
	}

	public PageBeanList<Article> getArticlePage(int pc) {
		int ps=3;//每一页的数量
		long count;
		String sql="SELECT count(*) FROM article_info";
		count=getForValue(sql);
		PageBeanList<Article> pageBeanList=new PageBeanList<Article>();
		pageBeanList.setPs(ps);
		pageBeanList.setPc(pc);
		pageBeanList.setCount(count);
		String sql1="SELECT * FROM article_info LIMIT "+(pc-1)*ps+","+ps;
		List<Article> articles=new ArrayList<Article>();
		articles=getForList(sql1);
		pageBeanList.setBeanList(articles);
		return pageBeanList;
	}
	
	/**
	 * 根据flagstr获取相应的文章
	 */
	public List<Article> findArticles(String flagstr) {
		String sql="SELECT ai.ID,ai.Title,ai.click,ai.Publisher,ai.UpdateTime,ai.flagstr FROM article_info ai WHERE flagstr like ? ";
		return getForList(sql, flagstr);
	}
	
	
	
	
	
	
}
