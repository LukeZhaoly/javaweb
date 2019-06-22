package cn.edu.swu.domain;

public class CriteriaArticle {
	
	private String Title;
	private String status;
	
	private String Publisher;
	private String UpdateTime;
	private String Comments;
	
	
	/**
	 * @return the title
	 */
	public String getTitle() {
		if(Title==null) {
			Title="%%";
		}else {
			Title="%"+Title+"%";
		}
		return Title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		Title = title;	
		
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		
		if(status==null) {
			status="%%";
		}else {
			status="%"+status+"%";
		}
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
	 * @return the publisher
	 */
	public String getPublisher() {
		if(Publisher==null) {
			Publisher="%%";
		}else {
			Publisher="%"+Publisher+"%";
		}
		return Publisher;
	}
	/**
	 * @param publisher the publisher to set
	 */
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	/**
	 * @return the updateTime
	 */
	public String getUpdateTime() {
		if(UpdateTime==null) {
			UpdateTime="%%";
		}else {
			UpdateTime="%"+UpdateTime+"%";
		}
		return UpdateTime;
	}
	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(String updateTime) {
		UpdateTime = updateTime;
	}
	/**
	 * @return the comments
	 */
	public String getComments() {
		if(Comments==null) {
			Comments="%%";
		}else {
			Comments="%"+Comments+"%";
		}
		return Comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		Comments = comments;
	}
	public CriteriaArticle( String title, String status, String publisher, String updateTime,
			String comments) {
		super();
		
		Title = title;
		this.status = status;
		
		Publisher = publisher;
		UpdateTime = updateTime;
		Comments = comments;
	}
	public CriteriaArticle() {
		
		
	}
	
}
