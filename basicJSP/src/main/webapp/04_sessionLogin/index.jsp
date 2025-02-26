<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈 화면</title>
</head>
<body>
<%
ArrayList<String> member = (ArrayList<String>) session.getAttribute("member");
if (member == null){
%>
<h1>홈화면</h1>
<a href='./join.jsp'>회원가입</a>
<a href='./login.jsp'>로그인</a>
<%} else{%>
<a href='./logout.jsp'>로그아웃</a>
<%} %>
</body>
</html>