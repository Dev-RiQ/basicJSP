<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<style>
 a {
 	text-decoration: underline;
 	cursor: pointer;
 	color: blue;
 }
</style>
</head>
<body>
<%
int no = Integer.parseInt(request.getParameter("no"));
Board board = boardDao.getBoard(no); %>
<h2>전체 게시글 수 : <%=boardDao.getCnt()%>개</h2>
<form action="./_05_updateBoardPro.jsp" method="post">
<table border="1">
	<tr>
		<th>번호</th>
		<td colspan="3"><input name="no" type="hidden" value="<%=no%>" /><%=board.getIntNo() %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=board.getWriter() %></td>
		<th>작성일</th>
		<td><%=board.getRegDate() %></td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3"><input type="text" name="subject" placeholder="<%=board.getSubject() %>" /></td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="3"><textarea name="contents" placeholder="<%=board.getContents() %>"></textarea></td>
	</tr>
	<tr>
		<td colspan="4"><button>수정하기</button></td>
	</tr>
</table>
</form>
</body>
</html>