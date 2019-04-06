<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,java.sql.*,javax.servlet.http.*"%>
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
		String phone=request.getParameter("phone");
		
		
		
		
		Connection connection=null;
		PreparedStatement ps=null;
		String sql="INSERT INTO user_info(username,password,phone) value(?,?,?)";
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/mystore?serverTimezone=GMT";
				String user="root";
				String password2="zly970114";
				connection=DriverManager.getConnection(url, user, password2);
				ps=connection.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ps.setString(3, phone);
				ps.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(ps!=null)
						ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				try {
					if(connection!=null)
						connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			response.getWriter().write("注册成功,3s后跳转主界面");
			response.setHeader("refresh", "3;url=/web/index.jsp");
		
		
	%>
</body>
</html>
