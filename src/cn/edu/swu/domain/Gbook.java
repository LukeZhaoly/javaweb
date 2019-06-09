package cn.edu.swu.domain;

public class Gbook {
	private int id;
	private String guestbook;
	private String guestuser;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the guestbook
	 */
	public String getGuestbook() {
		return guestbook;
	}
	/**
	 * @param guestbook the guestbook to set
	 */
	public void setGuestbook(String guestbook) {
		this.guestbook = guestbook;
	}
	/**
	 * @return the guestuser
	 */
	public String getGuestuser() {
		return guestuser;
	}
	/**
	 * @param guestuser the guestuser to set
	 */
	public void setGuestuser(String guestuser) {
		this.guestuser = guestuser;
	}
	public Gbook(int id, String guestbook, String guestuser) {
		super();
		this.id = id;
		this.guestbook = guestbook;
		this.guestuser = guestuser;
	}
	
	public Gbook(String guestbook, String guestuser) {
		super();
		this.guestbook = guestbook;
		this.guestuser = guestuser;
	}
	public Gbook() {
		
	}
	@Override
	public String toString() {
		return "Gbook [id=" + id + ", guestbook=" + guestbook + ", guestuser=" + guestuser + "]";
	}
	
}
