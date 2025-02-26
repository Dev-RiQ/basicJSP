<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    GugudanDAO dao = GugudanDAO.getInstance();
    int round = dao.getCnt();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 게임</title>
</head>
<body>
<div align="center">
	<h1>구구단 게임</h1>
	<%if(round < 6) {%>
		<form action="./gamePro.jsp" method="post">
			<h2><%=round %> 번째 문제 (현재 점수 : <%=dao.getScore() %>)</h2>
			<h2><%=dao.getNum1(round) %> X <%=dao.getNum2(round) %> = 
			<input type="number" name="inputAns" required></h2>
			<button>전송</button>
		</form>
	<%} else {%>
		<h2>게임 종료! 당신의 총 점수 : <%=dao.getScore()%></h2>
		<button onclick="location.href='./index.jsp'">처음으로</button>
	<%
			dao.resetGame();
	} %>
</div>
</body>
</html>