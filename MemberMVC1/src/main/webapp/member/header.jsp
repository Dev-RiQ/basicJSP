<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 MVC 1</title>
<link rel="stylesheet" href="../css/style.css">
<script src="../js/main.js"></script>
</head>
<% 
int log = MemberDAO.getInstance().getLog(); 
%>
<body>
<header>
<a href="./01_memberList.jsp">회원 목록</a>
<% if(log == 0) { %>
<a href="./05_memberJoin.jsp">회원 가입</a>
<a href="./02_memberLogin.jsp">로그인</a>
<%} else {%>
<a href="./07_memberContent.jsp?num=<%=log%>">내정보</a>
<a href="./04_memberLogoutPro.jsp">로그아웃</a>
<%} %>
</header>
<main>