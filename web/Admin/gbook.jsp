<%@page import="cn.edu.swu.domain.*"%>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
</head>
<body>
 
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="#" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                 <li><a class="on" href="${pageContext.request.contextPath}/Admin/main.jsp">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
       
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
              	<c:if test="${!empty user}">
              		<li><embed src=""></embed></li>
					<li>${user.username}</li> 
					<li><a href="${pageContext.request.contextPath}/Admin/UserPwdUpdate.jsp">修改密码</a></li>
                	<li><a href="${pageContext.request.contextPath}/Admin/LoginOut.jsp">退出</a></li>
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
                    <a href="${pageContext.request.contextPath}/Admin/main.jsp"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                    		 <li><a href="${pageContext.request.contextPath}/query.ud"><i class="icon-font">&#xe008;</i>文件管理</a></li>
	                        <li><a href="${pageContext.request.contextPath}/getPage.do"><i class="icon-font">&#xe008;</i>作品管理</a></li>
	                       
	                        <li><a href="${pageContext.request.contextPath}/get.ly"><i class="icon-font">&#xe004;</i>留言/评论管理</a></li>
	                        <li><a href="http://www.baidu.com/"><i class="icon-font">&#xe052;</i>友情链接</a></li>
	                       
                       
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Admin/system.jsp"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/Admin/system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="${pageContext.request.contextPath}/getPage.action"><i class="icon-font">&#xe037;</i>用户管理</a></li>
                       
                    </ul>
                </li>
            </ul>
        </div>
    </div>
   <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${pageContext.request.contextPath}/">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">留言管理</span></div>
        </div>
      
        
        <div class="result-wrap">
           
              
                <div class="result-content">

                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="article" type="checkbox"></th>
                          
                            <th>ID</th>
                            <th>留言</th>
                            <th>联系方式</th>
                           	<th>操作</th>
                           
                        </tr>
                        <c:forEach items="${gbooks }" var="gbook">
                        	<tr>
	                            <th class="tc" width="5%"><input class="allChoose" name="article" type="checkbox"></th>
	                          
	                            <th>${gbook.id }</th>
	                            <th>${gbook.guestbook }</th>
	                            <th>${gbook.guestuser }</th>
                         		<th><a href="${pageContext.request.contextPath }/delete.ly?id=${gbook.id}">删除</a></th>
                        	</tr>
                        
                        </c:forEach>
			        </table>
			    </div>
		</div>	       
                        
    <!--/main-->
</div>

</body>
</html>