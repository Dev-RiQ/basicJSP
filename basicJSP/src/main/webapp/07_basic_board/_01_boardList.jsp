<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 게시글</title>
<style>
 a {
 	text-decoration: underline;
 	cursor: pointer;
 	color: blue;
 }
</style>
</head>
<body>
<h2>전체 게시글 수 : <%=boardDao.getCnt()%>개</h2>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
	<%=boardDao.printAllBoard() %>
	<tr>
		<td colspan="6">
			<button onclick="location.href='./_00_main.jsp'">메인화면</button>
		</td>
	</tr>
</table>
</body>
</html>