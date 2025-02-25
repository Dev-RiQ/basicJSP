<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%if(log == -100) {%>
	<script>goBack('관리자 계정 삭제가 불가능합니다.')</script>
<%} %>

<h1>회원삭제</h1>
<form action="./deletePro.jsp" method="post">
	<table>
		<tr>
			<td><label for="deletePw">PW</label></td>
			<td><input name="deletePw" type="password" required /></td>
		</tr>
		<tr>
			<td colspan="2" align=center>
				<button>회원탈퇴</button>
			</td>
		</tr>
	</table>
</form>

<%@ include file="./footer.jsp"%>