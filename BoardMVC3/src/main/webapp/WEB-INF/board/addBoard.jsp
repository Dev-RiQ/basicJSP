<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>
    
<h2>게시글 추가하기</h2>
<form action="${ ctx }/boardAdd.do" method="post">
<table border="1">
	<tr>
		<th>번호</th>
		<td colspan="3">${ boardNo }</td>
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

<%@ include file="../../part/footer.jsp" %>
