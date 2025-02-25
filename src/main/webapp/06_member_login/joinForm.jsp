<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>

<h1>회원가입 페이지</h1>
<form action="./joinPro.jsp" method="post">
	<table>
		<tr>
			<td><label for="joinId">회원가입 ID</label></td>
			<td><input name="joinId" type="text" required /></td>
		</tr>
		<tr>
			<td><label for="joinPw">회원가입 PW</label></td>
			<td><input name="joinPw" type="password" required /></td>
		</tr>
		<tr>
			<td><label for="joinName">회원가입 name</label></td>
			<td><input name="joinName" type="text" required /></td>
		</tr>
		<tr>
			<td><label for="joinGender">회원가입 성별</label></td>
			<td><input name="joinGender" type="radio" value="true" checked />남성
				<input name="joinGender" type="radio" value="false" />여성</td>
		</tr>
		<tr>
			<td colspan="2" align=center>
				<button>회원가입</button>
			</td>
		</tr>
	</table>
</form>

<%@ include file="./footer.jsp"%>