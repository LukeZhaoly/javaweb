<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台登录注册</title>
<link href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery1.7.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});
	function change(obj) {
		obj.src = "${pageContext.request.contextPath}/CheckCodeServlet?time=" + new Date().getTime();
	}
	function checkData() {
		
		//1.获取用户名， 密码   确认密码
	    var uname =  document.getElementById("uname");
	    var pwd =  document.getElementById("pwd");
	    var code=document.getElementById("checkcode");
	    
	    //2.判断输入的内容不能为空
	    if(uname.value==""){
	    	alert("请输入用户名");
	    	return;
	    }
	    if(pwd.value==""){
	    	alert("请输入密码");
	    	return;
	    }
	    if(code.value==""){
	    	alert("请输入验证码");
	    	return;
	    }
	    var form =  document.getElementById("reg_form");
	    form.submit();//通过js提交表单 执行action  
	}
	
	function checkData1() {
		
		//1.获取用户名， 密码   确认密码
	    var uname =  document.getElementById("uname");
	    var pwd =  document.getElementById("pwd");
	    var phone =  document.getElementById("ph");
	    
	    //2.判断输入的内容不能为空
	    if(uname.value==""){
	    	alert("请输入用户名");
	    	return;
	    }
	    if(pwd.value==""){
	    	alert("请输入密码");
	    	return;
	    }
	    if(phone.value==""){
	    	alert("请输入电话");
	    	return;
	    }
	    var form =  document.getElementById("reg_form");
	    form.submit();//通过js提交表单 执行action  
	}
</script>
</head>

<body>
<center>
	<font color="red" size="18">${meg}</font>
</center>
<div id="tab">
  <ul class="tab_menu">
    <li class="selected">登录</li>
    <li>注册</li>
  </ul>
  <div class="tab_box"> 
    <!-- 学生登录开始 -->
    <div>
      <div class="stu_error_box"></div>
      <form action="${pageContext.request.contextPath }/login.action" method="post" class="stu_login_error" id="reg_form">
        <div id="username">
          <label>姓&nbsp;&nbsp;&nbsp;名：</label>
          <input type="text" id="uname" name="username"  />
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="pwd" name="password"  />
        </div>
        <div id="code">
          <label>验证码：</label>
          <input type="text" id="checkcode" name="code"    />
          <img src="${pageContext.request.contextPath }/CheckCodeServlet" title="点击更换" onclick="change(this)"/> </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>
        <div id="login">
          <button type="button" onclick="checkData()">登录</button>
        </div>
      </form>
    </div>
   <!-- 登录结束-->
   <!-- 注册开始-->
    <div class="hide">
     <div class="tea_error_box"></div>
      <form action="${pageContext.request.contextPath }/add.action" method="post" class="tea_login_error" id="reg_form">
        <div id="username">
          <label>姓&nbsp;&nbsp;&nbsp;名：</label>
          <input type="text" id="uname" name="username" />
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="pwd" name="password" />
        </div>
        
        <div id="phone">
          <label>电&nbsp;&nbsp;&nbsp;话：</label>
          <input type="text" id="ph" name="phone" />
        </div>
        
        <div id="regist">
          <button type="button" onclick="checkData1()">注册</button>
        </div>
      </form>
    </div>
     
    
    
  </div>
</div>

<div class="screenbg">
  <ul>
    <li><a href="javascript:;"><img src="${pageContext.request.contextPath }/images/0.jpg"></a></li>
    <li><a href="javascript:;"><img src="${pageContext.request.contextPath }/images/1.jpg"></a></li>
    <li><a href="javascript:;"><img src="${pageContext.request.contextPath }/images/2.jpg"></a></li>
  </ul>
</div>
</body>
</html>
