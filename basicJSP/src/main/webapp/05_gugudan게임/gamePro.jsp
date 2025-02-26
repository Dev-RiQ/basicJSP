<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 게임 결과</title>
</head>
<body>
<%
GugudanDAO dao = GugudanDAO.getInstance();
dao.setCnt();
if(dao.isAnswer(request.getParameter("inputAns"))){
%>
<script>
	alert('정답입니다')
</script>
<%}else { %>
<script>
	alert('오답입니다')
</script>
<%} %>
<script>
	location.href='./game.jsp'
</script>
</body>
</html>