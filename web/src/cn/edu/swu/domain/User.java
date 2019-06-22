package cn.edu.swu.domain;

import java.util.List;

public class User {
		
		private int uid;
		private String username;
		private String password;
		private String phone;
//		private List<Privilege> privileges;
		
		
		
		
		@Override
		public String toString() {
			return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", phone=" + phone + "]";
		}
		
		/**
		 * @return the uid
		 */
		public int getUid() {
			return uid;
		}
		/**
		 * @param uid the uid to set
		 */
		public void setUid(int uid) {
			this.uid = uid;
		}
		/**
		 * @return the username
		 */
		public String getUsername() {
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
			return phone;
		}
		/**
		 * @param phone the phone to set
		 */
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public User(int uid, String username, String password, String phone) {
			super();
			this.uid = uid;
			this.username = username;
			this.password = password;
			this.phone = phone;
		}

		public User() {
			
		}
		public User(String username, String password, String phone) {
			super();
			this.username = username;
			this.password = password;
			this.phone = phone;
		}
		
		
		
}

