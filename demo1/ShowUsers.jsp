<%@page import="cn.edu.swu.domain.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>所有用户信息如下</h1>
<%
	List<User> users=(List<User>)request.getAttribute("users");
	
%>

<table>
	<tr>
		<th>uid</th>
		<th>username</th>
		<th>password</th>
		<th>phone</th>
	</tr>
	<%
		for(User user:users){
	%>
		<tr>
			<td><%=user.getUid() %></td>
			<td><%=user.getUsername() %></td>
			<td><%=user.getPassword() %></td>
			<td><%=user.getPhone() %></td>
		</tr>
	<%
		}
	%>
</table>

</body>
</html>
