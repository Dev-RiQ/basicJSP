<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>

<form action="${ ctx }/boardUpdate.do" method="post">
<table border="1">
	<tr>
		<th>번호</th>
		<td colspan="3"><input name="no" type="hidden" value="${ no }" />${ no }</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${ board.writer }</td>
		<th>작성일</th>
		<td>${ board.regDate }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3"><input type="text" name="subject" value="${ board.subject }" required/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="3"><textarea name="contents" required>${ board.contents }</textarea></td>
	</tr>
	<tr>
		<td colspan="4"><button>수정하기</button></td>
	</tr>
</table>
</form>

<%@ include file="../../part/footer.jsp" %>
