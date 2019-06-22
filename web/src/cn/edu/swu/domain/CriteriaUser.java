package cn.edu.swu.domain;

public class CriteriaUser {
	private String username;
	private String password;
	private String phone;
	/**
	 * @return the username
	 */
	public String getUsername() {
		if(username==null) {
			username="%%";
		}else {
			username="%"+username+"%";
		}
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		if(password==null) {
			password="%%";
		}else {
			password="%"+password+"%";
		}
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		if(phone==null) {
			phone="%%";
		}else {
			phone="%"+phone+"%";
		}
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public CriteriaUser(String username, String password, String phone) {
		super();
		this.username = username;
		this.password = password;
		this.phone = phone;
	}
	public CriteriaUser() {
		
	}

}
