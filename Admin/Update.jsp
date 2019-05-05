<%@page import="cn.edu.swu.domain.User"%>
<%@page import="java.util.List"%>
<%@page import="cn.edu.swu.domain.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>

<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="main.jsp" class="navbar-brand">后台管理</a></h1>
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
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">作品管理</a><span class="crumb-step">&gt;</span><span>修改作品</span></div>
        </div>
       <%
       		
       		Article article=(Article)request.getAttribute("article");
       %>
        <div class="result-wrap">
            <div class="result-content">
                <form action="update.do" method="post" >
                    <table class="insert-tab" width="100%">
                       <input type="hidden" name="id" value="<%=article.getID() %>" />
                       <input type="hidden" name="oldtitle" value="<%=article.getTitle() %>"/>
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>名称：</th>
                                <td>
                                    <input class="common-text required"  name="title"  size="50" value="<%=article.getTitle() %>" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>作者：</th>
                                <td><input class="common-text" name="Publisher" size="50" value="<%=article.getPublisher() %>" type="text"></td>
                            </tr>
                             <tr>
                                <th>评审状态：</th>
                                <td><input class="common-text" name="status" size="50" value="<%=article.getStatus() %>" type="text"></td>
                            </tr>
                            <tr>
                                <th>Comments：</th>
                                <td><input name="comments" class="common-textarea" id="content" cols="30" style="width: 98%; height: 150px;" rows="10" value="<%=article.getComments() %>"></td>
                            </tr>
                          
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onClick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
                <c:if test="${requestScope.message != null }">
                	<h1>${requestScope.message }</h1>
                
                </c:if>
            </div>
        </div>

    </div>
    <!--/main-->
</div>	

</body>
</html>