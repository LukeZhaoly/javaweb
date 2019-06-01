<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<br>
	<c:choose>
		<c:when test="${pbList.pc eq null or pbList.pc eq 1 }">上一页	</c:when>
		<c:otherwise >
			<a href="${pbList.url }pc=${pbList.pc-1}">上一页</a>
		</c:otherwise>
	</c:choose>
	<c:choose>
		
		<c:when test="${pbList.tp<6 }">
			<c:set value="1" var="begin"></c:set>
			<c:set value="${pbList.tp }" var="end"></c:set>
		</c:when>
		<c:otherwise>
			<c:set value="${pbList.pc-2 }" var="begin"></c:set>
			<c:set value="${pbList.pc+3 }" var="end"></c:set>
			
			<c:if test="${pbList.pc<3 }">
				<c:set value="1" var="begin"></c:set>
				<c:set value="6" var="end"></c:set>
			</c:if>
			<c:if test="${pbList.pc+3>pbList.tp }">
				<c:set value="${pbList.tp-5 }" var="begin"></c:set>
				<c:set value="${pbList.tp }" var="end"></c:set>
			</c:if>
		</c:otherwise>
	</c:choose>
	
	<c:forEach begin="${begin }" end="${end }" var="page">
		<c:choose>
			<c:when test="${pbList.pc eq page }">${page }</c:when>
			<c:otherwise>
				<a href="${pbList.url }pc=${page}">${page }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<c:choose>
		<c:when test="${pbList.pc eq null or pbList.pc eq pbList.tp }">下一页</c:when>
		<c:otherwise>
			<a href="${pbList.url }pc=${pbList.pc + 1}">下一页</a>
		</c:otherwise>
	</c:choose>
</body>
</html>