<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../part/header.jsp" %>
    
<h2>전체 게시글 수 : ${ cnt }개</h2>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
	${ pageList }
	<tr>
		<td colspan="6">
			<button onclick="location.href='${ ctx }/index.jsp'">메인화면</button>
		</td>
	</tr>
</table>
<div>${ page }</div>
<%@ include file="../../part/footer.jsp" %>
