<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--设置标签图标-->
    <link href="myti.ico" rel="shortcut icon">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/regist.css">
    <link rel="stylesheet" href="css/footer.css">
</head>
<body>
<!--头部-->
<div id="reg_header">
    <div class="reg_h_center">
        <div class="reg_h_left">
            <img src="images/myti.png" alt="">
            <h4>欢迎注册</h4>
        </div>

        <div class="reg_h_right">
            <a href="login.jsp">请登录</a>
            <span>已有账户</span>

        </div>
    </div>
</div>
<!--表单内容-->
<div id="reg_content">
    <div class="reg_content_left">
        <form action="add_user.jsp" id="reg_form" method="POST">

            <div>
                <label>用户名</label>
                <input id="username" type="text" placeholder="请输入用户名" name="username">
            </div>
            <div>
                <label>密码</label>
                <input id="pwd" type="text" placeholder="请输入密码" name="password">
            </div>
            <div>
                <label>确认密码</label>
                <input id="pwd2" type="text" placeholder="请再次输入密码">
            </div>
            <div>
                <label>电话</label>
                <input  type="text" placeholder="请输入电话" name="phone">
            </div>
            <div class="submit_button">
                <input type="button" value="立即注册" onclick="checkData(this)">
            </div>

        </form>
    </div>
    <div class="reg_content_right">
        <a href="#">
            <img src="images/mu.png" alt="">
        </a>
    </div>
</div>

<!--尾部-->


<script type="text/javascript">


function checkData(obj) {
    //alert("checkData");
    //1.获取 用户名密码确认密码   
    var username=document.getElementById("username");  
    var pwd=document.getElementById("pwd");
    var pwd2=document.getElementById("pwd2");

   //2.判断输入的内容不能为空
   if(username.value==""){
       alert("请输入用户名");
        return;
   }
    if(pwd.value==""){
       alert("请输入密码");
        return;
   }
    if(pwd2.value==""){
       alert("请再次输入密码");
        return;
   }

   //3.判断2次输入的是否一致
   if(pwd.value==pwd2.value){
       //发送请求
      var form=document.getElementById("reg_form");
      form.submit();//通过js提交
   }else{
       alert("密码不一致");
   }
}
</script>

</body>
</html>