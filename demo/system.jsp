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
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="${pageContext.request.contextPath}/main.jsp" class="navbar-brand">后台管理</a></h1>
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
                	<li><a href="${pageContext.request.contextPath}/index.jsp">退出</a></li>
               	</c:if>
               	<c:if test="${empty user}">
					<li><a href="${pageContext.request.contextPath}/index.jsp">登录</li> 
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
                        <li><a href="ArticlesServlet?method=query"><i class="icon-font">&#xe008;</i>作品管理</a></li>
                       
                        <li><a href="#"><i class="icon-font">&#xe004;</i>留言/评论管理</a></li>
                        <li><a href="http://www.baidu.com/"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="#"><i class="icon-font">&#xe033;</i>广告管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="${pageContext.request.contextPath}/main.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">系统设置</span></div>
        </div>
        <div class="result-wrap">
            <form action="#" method="post" id="myform" name="myform">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>网站信息设置</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tbody><tr>
                                <th width="15%"><i class="require-red">*</i>域名：</th>
                                <td><input type="text" id="" value="47.107.82.254" size="85" name="keywords" class="common-text"></td>
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>站点标题：</th>
                                    <td><input type="text" id="" value="精品美文" size="85" name="title" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>关键字：</th>
                                    <td><input type="text" id="" value="articles" size="85" name="keywords" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>描述：</th>
                                    <td><input type="text" id="" value="beautiful articles" size="85" name="description" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <input type="button" value="返回" onClick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                            </tbody></table>
                    </div>
                </div>
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe014;</i>站长信息设置</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tr>
                                <th width="15%"><i class="require-red">*</i>网站联系邮箱：</th>
                                <td><input type="text" id="" value="2087961925@qq.com" size="85" name="email" class="common-text"></td>
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>联系人：</th>
                                    <td><input type="text" id="" value="zly" size="85" name="contact" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>联系电话：</th>
                                    <td><input type="text" id="" value="4396" size="85" name="phone" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>备案ICP：</th>
                                    <td><input type="text" id="" value="swu-zly" size="85" name="icp" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>地址：</th>
                                    <td><input type="text" id="" value="中国 • 重庆" size="85" name="address" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="hidden" value="" name="file">
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <input type="button" value="返回" onClick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>