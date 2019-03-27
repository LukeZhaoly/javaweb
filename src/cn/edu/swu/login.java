package cn.edu.swu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		Connection connection=null;
		PreparedStatement statement=null;
		ResultSet resultSet=null;
		
		PrintWriter out=response.getWriter();
		String sql ="SELECT count(id) FROM users where name =? AND password=? ";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    String url="jdbc:mysql:///Student";//链接的mysql
			String user="root";
			String password2="zly970114";
		
			connection =DriverManager.getConnection(url,user,password2);
			statement=connection.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);
			resultSet =statement.executeQuery();
			
			if(resultSet.next()) {
				int count=resultSet.getInt(1);
				if(count>0) {
					out.print("hello:"+username);
				}else {
					out.print("sorry:"+username);
				}
			}	
		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(resultSet !=null) {
						resultSet.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				try {
					if(statement !=null) {
						statement.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				try {
					if(connection !=null) {
						connection.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				
				
			}

	}
}
