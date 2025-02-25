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
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

%>
<h5><%=name %></h5>
<h5><%=id %></h5>
<h5><%=pw %></h5>

<h1>로그인</h1>
<form action="./loginPro.jsp" method="post">
ID : <input type="text" name="inputId" required /><br> 
PW : <input type="password" name="inputPw" required /><br>
<input type="hidden" name="id" value="<%=name%>">
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="pw" value="<%=pw%>">
<button>로그인</button> 
</form><br>
<button onclick="location.href='./index.jsp'">홈으로</button>
</div> 
</body>
</html>