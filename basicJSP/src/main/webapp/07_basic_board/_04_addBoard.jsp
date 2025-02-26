<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 추가</title>
</head>
<body>
<h2>게시글 추가하기</h2>
<form action="./_04_addBoardPro.jsp" method="post">
<table border="1">
	<tr>
		<th>번호</th>
		<td colspan="3"><%=Board.getBoardNo() %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td colspan="3"><input type="text" name="writer" required /></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3"><input type="text" name="subject" required /></td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="3"><textarea name="contents" required></textarea></td>
	</tr>
	<tr>
		<td colspan="4"><button>작성완료</button></td>
	</tr>
</table>
</form>
</body>
</html>