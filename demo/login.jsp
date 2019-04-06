<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/footer.css">
</head>
<body>
<div id="header">
    <div class="h_center">

        
         <img src="images/myti.png" height="60">
    </div>
</div>
<div id="login_body">
    <div class="login_b_center">
        <div class="login_bg">
            <h4>密码登录</h4>
            <form action="TrueOrFalse.jsp">
	            <div class="userName">
	                <span></span>
	                <input type="text" placeholder="请输入用户名..." name="username">
	            </div>
	            <div class="password" >
	                <span></span>
	                <input type="password" placeholder="请输密码..." name="password">
	            </div>
	            <div class="hrh">
	                <input type="submit" value="登录"  >
	            </div>
            </form>
            <div class="password_forget">
                <a href="#">忘记密码</a>
                <a href="regist.jsp">免费注册</a>
            </div>
        </div>
    </div>
</div>



</body>
</html>