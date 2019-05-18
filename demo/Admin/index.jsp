<%@page import="java.util.Locale"%>
<%@page import="org.eclipse.jdt.internal.compiler.batch.Main"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	
<head>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login-common.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
</head>
<body>
<%
	String encode=request.getParameter("encode");
	if(encode!=null)
		if("en".equals(encode)){
			session.setAttribute("locale", Locale.US);
		}else if("zh".equals(encode)){
			session.setAttribute("locale", Locale.CHINA);
		}
%>

	<c:if test="${sessionScope.locale != null }">
		<fmt:setLocale value="${sessionScope.locale }"/>
	</c:if>
	<fmt:setBundle basename="MB" />

		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							<fmt:message key="login"></fmt:message>
						</div>
						<form action="${pageContext.request.contextPath }/login.action" method="post">
							
							<div class="form_text_ipt">
								<input name="username" type="text" placeholder=<fmt:message key="username"/>>
							</div>
							<div class="ececk_warning"><span><fmt:message key="login_u"></fmt:message></span></div>
							
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder=<fmt:message key="password" />>
							</div>
							<div class="ececk_warning"><span><fmt:message key="login_p"></fmt:message> </span></div>
						   
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"><fmt:message key="auto_login"></fmt:message> </label>
								</div>
								<div class="right check_right">
									<a href="#"><fmt:message key="forget_p"/></a>
								</div>
							</div>
							<div class="form_btn">
								<button type="submit" onclick="javascript:window.location.href='#'"><fmt:message key="login" /></button>
							</div>
							<div class="form_reg_btn">
								<span><fmt:message key="no_account"/></span><a href="${pageContext.request.contextPath}/Admin/register.jsp"><fmt:message key="regist"></fmt:message></a>
							</div>
						</form>
						<div class="other_login">
							
								<a href="${pageContext.request.contextPath }/Admin/index.jsp?encode=zh">中文</a>|
								<a href="${pageContext.request.contextPath }/Admin/index.jsp?encode=en">English</a>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/Ajquery.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/Acommon.js" ></script>
		<div style="text-align:center;">
<p><fmt:message key="more_info"></fmt:message><a href="https://www.baidu.com/" target="_blank"><fmt:message key="bd"></fmt:message></a></p>
</div>
	</body>
</html>
