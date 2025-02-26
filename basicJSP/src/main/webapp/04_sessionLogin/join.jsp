<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<div align="center">
<h1>회원가입</h1>
<form action="./joinPro.jsp" method="post">
name : <input type="text" name="name" required /><br> 
ID : <input type="text" name="id" required /><br> 
PW : <input type="password" name="pw" required /><br>
<button>회원가입</button> 
</form><br>
<button onclick="location.href='./index.jsp'">홈으로</button>
</div> 
</body>
</html>