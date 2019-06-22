package cn.edu.swu.DAO;


import java.util.List;



import cn.edu.swu.domain.Article;
import cn.edu.swu.domain.CriteriaArticle;
import cn.edu.swu.domain.FileUploadBean;
import cn.edu.swu.domain.PageBeanList;
	
public interface ArticleDao {
	
	public Article getArticle(int id);

	
	/**
	 * 
	 * 获取书籍信息
	 */
	public List<Article> getArticles(CriteriaArticle ca);
		
	
	
	/**
	 * 
	 * 删除操作
	 * 
	 */
	public void DeleteArticle(int ID);
		
		
		
	
	/**
	 * 新增书籍
	 * 
	 */
	public void InsertArticle(Article article);
		
		
	
	/**
	 * 更新书籍信息
	 * @throws Exception 
	 * 
	 */
	public void UpdateArticle(Article article) ;
		
		
	
	
	/**
	 * 查询书籍
	 * @throws Exception 
	 */
	public long getArticlewithName(String Title);
	
	
	/**
	 * 文章信息分页
	 * 
	 */
	public PageBeanList<Article> getArticlePage(int pc);


	public List<Article> findArticles(String flagstr); 


}

