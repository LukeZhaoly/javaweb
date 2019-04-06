<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		Connection connection=null;
		PreparedStatement ps=null;
		ResultSet resultSet=null;
		String sql ="SELECT count(uid) FROM user_info where username =? AND password=? ";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    String url="jdbc:mysql://localhost:3306/mystore?serverTimezone=GMT";//链接的mysql
			String user="root";
			String password2="zly970114";
			connection =DriverManager.getConnection(url,user,password2);
			ps=connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			resultSet =ps.executeQuery();
			
			if(resultSet.next()) {
				int count=resultSet.getInt(1);
				if(count>0) {
					out.print("欢迎登陆:"+username+",5s后跳转到主界面");
					response.setHeader("refresh", "5;url=/web/index.jsp");
				}else {
					out.print("sorry:"+username+",您还未注册");
					
			%>
					<br><a href="regist.jsp">点击此处注册</a><br>
					
			<%		
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
					if(ps!=null) {
						ps.close();
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
		
		%>
</body>
</html>
