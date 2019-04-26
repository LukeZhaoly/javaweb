<%@page import="cn.edu.swu.domain.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>简单通用文章系统后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
 <%
 	User user=(User)session.getAttribute("user");
 	if(user==null){
 		session.invalidate();
 		response.sendRedirect("index.jsp");
 	}
 %>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="#" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                 <li><a class="on" href="${pageContext.request.contextPath}/main.jsp">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
       
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
              	<c:if test="${!empty user}">
					<li>${user.username}</li> 
					<li><a href="#">修改密码</a></li>
                	<li><a href="${pageContext.request.contextPath}/LoginOut.jsp">退出</a></li>
               	</c:if>
               	<c:if test="${empty user}">
					<li>登录</li> 
               	</c:if>
                
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="${pageContext.request.contextPath}/main.jsp"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                    	
	                        <li><a href="query.do"><i class="icon-font">&#xe008;</i>作品管理</a></li>
	                       
	                        <li><a href="#"><i class="icon-font">&#xe004;</i>留言/评论管理</a></li>
	                        <li><a href="http://www.baidu.com/"><i class="icon-font">&#xe052;</i>友情链接</a></li>
	                        <li><a href="#"><i class="icon-font">&#xe033;</i>广告管理</a></li>
                       
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/system.jsp"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="#"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                        <li><a href="#"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                        <li><a href="#"><i class="icon-font">&#xe045;</i>数据还原</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用管理系统</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="${pageContext.request.contextPath}/insert.jsp"><i class="icon-font">&#xe001;</i>新增作品</a>
                   
                    <a href="#"><i class="icon-font">&#xe048;</i>新增作品分类</a>
                   
                    <a href="#"><i class="icon-font">&#xe01e;</i>作品评论</a>
                </div>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">操作系统</label><span class="res-info">Ubuntu</span>
                    </li>
                    <li>
                        <label class="res-lab">运行环境</label><span class="res-info">Apache/tomcat/8.5</span>
                    </li>
                    <li>
                        <label class="res-lab">编辑环境</label><span class="res-info">Eclipse</span>
                    </li>
                    <li>
                        <label class="res-lab">版本</label><span class="res-info">v-1.0</span>
                    </li>
                    <li>
                        <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                    </li>
                    <li>
                    <% 
                    	//获取时间
                    	Date d=new Date();
                    	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    %>
                        <label class="res-lab">北京时间</label><span class="res-info"><%=df.format(d) %></span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info">47.107.82.254</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info">47.107.82.254</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>使用帮助</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">更多信息，请访问：</label><span class="res-info"><a href="http://www.baidu.com/" target="_blank">说明</a></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->
</div>

</body>
</html>