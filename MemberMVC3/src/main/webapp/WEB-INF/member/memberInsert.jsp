<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>

<h1>회원가입</h1>

<form action="${ ctx }/memberInsert.do" method="post">
	<table>
		<tr>
			<td><label for="joinId">아이디</label></td>
			<td><input type="text" name="joinId" required /></td>
		</tr>
		<tr>
			<td><label for="joinPw">비밀번호</label></td>
			<td><input type="password" name="joinPw" required /></td>
		</tr>
		<tr>
			<td><label for="joinName">이름</label></td>
			<td><input type="text" name="joinName" required /></td>
		</tr>
		<tr>
			<td><label for="joinAge">나이</label></td>
			<td><input type="number" name="joinAge" required /></td>
		</tr>
		<tr>
			<td><label for="joinEmail">이메일</label></td>
			<td><input type="text" name="joinEmail" required /></td>
		</tr>
		<tr>
			<td><label for="joinPhone">전화번호</label></td>
			<td><input type="text" name="joinPhone" required /></td>
		</tr>
		<tr>
			<td colspan="2">
				<button>회원가입</button>
			</td>
		</tr>
	</table>
</form>

<%@ include file="../../part/footer.jsp" %>