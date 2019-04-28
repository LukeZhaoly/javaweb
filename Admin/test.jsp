<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="UploadServlet" method="post" enctype="multipart/form-data">
	<input type="file" name="file"/>
	<input type="text" name="title">
	<input type="submit" value="submit">
</form>
</body>
</html>