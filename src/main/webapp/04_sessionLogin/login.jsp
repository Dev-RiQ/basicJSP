<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<div align="center">
<%
%>
<h1>로그인</h1>
<form action="./loginPro.jsp" method="post">
ID : <input type="text" name="inputId" required /><br> 
PW : <input type="password" name="inputPw" required /><br>
<button>로그인</button> 
</form><br>
<button onclick="location.href='./index.jsp'">홈으로</button>
</div> 
</body>
</html>