package cn.edu.swu.domain;




public class Article {
	private int ID;
	private String Title;
	private String flagstr;
	
	public String getFlagstr() {
		return flagstr;
	}
	
	public void setFlagstr(String flagstr) {
		this.flagstr = flagstr;
	}
	
	public String getTitle() {
		return Title;
	}
	
	public void setTitle(String title) {
		Title = title;
	}
	private String status;
	private int click;
	private String Publisher;
	private String UpdateTime;
	private String Comments;
	private String path;
	
	public String getPath() {
		return path;
	}
	
	public void setPath(String path) {
		this.path = path;
	}
	public Article() {
		
	}
	
	
	public Article(String title, String flagstr, String status, int click, String publisher, String updateTime,
			String comments, String path) {
		super();
		Title = title;
		this.flagstr = flagstr;
		this.status = status;
		this.click = click;
		Publisher = publisher;
		UpdateTime = updateTime;
		Comments = comments;
		this.path = path;
	}

	
	@Override
	public String toString() {
		return "Article [ID=" + ID + ", Title=" + Title + ", flagstr=" + flagstr + ", status=" + status + ", click="
				+ click + ", Publisher=" + Publisher + ", UpdateTime=" + UpdateTime + ", Comments=" + Comments
				+ ", path=" + path + "]";
	}

	
	public int getID() {
		return ID;
	}
	
	public void setID(int iD) {
		ID = iD;
	}
	
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getClick() {
		return click;
	}
	
	public void setClick(int click) {
		this.click = click;
	}
	
	public String getPublisher() {
		return Publisher;
	}
	
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	
	public String getUpdateTime() {
		return UpdateTime;
	}
	
	public void setUpdateTime(String updateTime) {
		UpdateTime = updateTime;
	}
	
	public String getComments() {
		return Comments;
	}
	
	public void setComments(String comments) {
		Comments = comments;
	}
	
	
}
