<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 홈</title>
</head>
<body>
<h1>게시판</h1>
<a href="./_01_boardList.jsp">전체 게시글 확인하기</a><br><br>
<a href="./_02_addDummyPro.jsp">더미 게시글 추가하기</a><br><br>
<a href="./_03_deleteAllBoardPro.jsp">전체 게시글 삭제하기</a><br><br>
<a href="./_04_addBoard.jsp">게시글 추가하기</a><br>
<hr><br>
<a href="./_07_boardListPaging.jsp?page=1">페이징 게시판</a>
</body>
</html>