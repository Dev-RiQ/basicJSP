<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<c:set var="ctx" value="${ pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 MVC 2</title>
<link rel="stylesheet" href="${ ctx }/css/style.css">
</head>
<body>
<header>
	<a href="${ ctx }/memberList.do">회원 목록</a>
	<c:choose>
		<c:when test="${ log eq null }">
			<a href="${ ctx }/member/memberInsert.jsp">회원 가입</a>
			<a href="${ ctx }/member/memberLogin.jsp">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="${ ctx }/memberContent.do?num=${ log }">내정보</a>
			<a href="${ ctx }/memberLogout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
</header>
<main>