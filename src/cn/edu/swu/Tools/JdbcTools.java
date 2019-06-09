package cn.edu.swu.Tools;




import java.sql.Connection;


import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;




public class JdbcTools {
	
	
	private static DataSource dataSource=null;
	static {
		dataSource=new ComboPooledDataSource("swu");
	}
	/*
	 * 释放
	 * 返回数据源的一个connection对象
	 */
	public static Connection getConnection() throws Exception {
		 
		 return dataSource.getConnection();
	}
	
	/**
	 * 
	 * 释放资源
	 * @param rs
	 * @param ps
	 * @param con
	 */
	public static void release(Connection con) {
		
		try {
			if(con!=null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
