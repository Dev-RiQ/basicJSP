<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%if(log == -100) {%>
	<script>goBack('관리자 계정 정보 수정이 불가능합니다.')</script>
<%} else{%>

<h1>회원가입 페이지</h1>
<form action="./updatePro.jsp" method="post">
	<table>
		<tr>
			<td><label for="updateId">회원가입 ID</label></td>
			<td><input name="updateId" type="text" required /></td>
		</tr>
		<tr>
			<td><label for="updatePw">회원가입 PW</label></td>
			<td><input name="updatePw" type="password" required /></td>
		</tr>
		<tr>
			<td><label for="updateName">회원가입 name</label></td>
			<td><input name="updateName" type="text" required /></td>
		</tr>
		<tr>
			<td><label for="updateGender">회원가입 성별</label></td>
			<td><input name="updateGender" type="radio" value="true" <%if(dao.getLoginGender()) {%> checked<%} %> />남성
				<input name="updateGender" type="radio" value="false" <%if(!dao.getLoginGender()) {%> checked<%} %>  />여성</td>
		</tr>
		<tr>
			<td colspan="2" align=center>
				<button>정보수정</button>
			</td>
		</tr>
	</table>
</form>
<%} %>
<%@ include file="./footer.jsp"%>