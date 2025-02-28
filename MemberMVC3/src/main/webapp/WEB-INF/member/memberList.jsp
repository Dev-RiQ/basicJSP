<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>

<h1>회원 목록</h1>
<table>
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="member" items="${ memberList }">
		<tr>
			<td>${ member.num }</td>
			<td><a href="${ ctx }/memberContent.do?num=${ member.num }">${ member.id }</a></td>
			<td>${ member.pass }</td>
			<td>${ member.name }</td>
			<td>${ member.age }</td>
			<td>${ member.email }</td>
			<td>${ member.phone }</td>
			<td><button onclick="location.href='${ ctx }/memberDelete.do?num=${ member.num }'">삭제</button></td>
		</tr>
	</c:forEach>
</table>

<%@ include file="../../part/footer.jsp" %>