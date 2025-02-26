<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int rdNum = new Random().nextInt(100) + 1;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업다운 메인</title>
</head>
<body>
<h1>업다운 게임</h1>
<form action="./updownGameplay.jsp" method="post">
<input type="hidden" name="rdNum" value=<%=rdNum %>>
<button>게임시작</button>
</form>
</body>
</html>