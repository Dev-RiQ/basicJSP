<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 로그인 실습</title>
<style>
	body{
		height: 95vh;
		box-sizing: border-box; 
	}
	header, footer{
		height: 10vh;
		line-height: 10vh; 
	}
	main{
		height: 70vh;
		background-color: #eee;
		text-align: center;
	}
	table{
	 margin: auto;
	 border: 1px solid;
	}
	table td{
	 border: 1px solid;
	}
	
</style>
</head>
<body>
<header>
<div class="gnb">
<a href="./main.jsp">홈</a>
<%if(log == -1) { %>
<a href="./joinForm.jsp">회원가입</a>
<a href="./loginForm.jsp">로그인</a>
<%} else { %>
<a href="./logoutPro.jsp">로그아웃</a>
<a href="./updateForm.jsp">회원정보수정</a>
<a href="./deleteForm.jsp">회원탈퇴</a>
<%} %>
<a href="./memberList.jsp">전체회원보기</a>
</div>
<hr>
</header>
<main>