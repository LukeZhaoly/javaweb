<%@page import="cn.edu.swu.domain.User"%>
<%@page import="cn.edu.swu.domain.Article"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
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
            <h1 class="topbar-logo none"><a href="main.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="main.jsp">首页</a></li>
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
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="main.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">作品管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="query.do" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="">全部</option>
                                    <option value="19">编程学习</option><option value="20">精美短文</option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                           
	                            <td><input class="common-text" placeholder="关键字" name="title2" value="" id="" type="text"></td>
	                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit">(根据Title查询) </td>
                
                         
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form action=query.do"  name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="insert.jsp"><i class="icon-font"></i>新增作品</a>
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
<%
	List<Article> articles =(List<Article>)request.getAttribute("articles");
%>
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="article" type="checkbox"></th>
                          
                            <th>ID</th>
                            <th>Title</th>
                            <th>status</th>
                            <th>click</th>
                            <th>Publisher</th>
                            <th>UpdateTime</th>
                            <th>Comments</th>
                        	<th>Operation</th>
                        </tr>
                        <%
                        	if(articles!=null){
                        		for(Article article:articles){
                        %>
                        <tr>
                            
                           <th class="tc" width="5%"><input class="allChoose" name="article" type="checkbox"></th>
                            <td><%=article.getID() %></td>
                            <td><a target="_blank" href="#" ><%=article.getTitle() %></a>  </td>
                            <td><%=article.getStatus() %></td>
                            <td><%=article.getClick() %></td>
                            <td><%=article.getPublisher() %></td>
                            <td><%=article.getUpdateTime() %></td>
                            <td><%=article.getComments() %></td>
                            <td>
                                <a class="link-update" href="edit.do?id=<%=article.getID()%>">修改</a>
                                <a class="link-del" href="delete.do?ID=<%=article.getID()%>">删除</a>
                            </td>
                        </tr>
                        
                        <%
                        		}
                        	}
                        %>
                    </table>
                    <div class="list-page"> 1-1</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
