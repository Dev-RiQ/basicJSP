<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>

<h1>${ member.id } 회원의 상세보기</h1>

<form action="${ ctx }/memberUpdate.do" method="post">
	<table>
		<tr>
			<td>번호</td>
			<td>${ member.num }</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>${ member.id }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${ member.pass }</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${ member.name }</td>
		</tr>
		<c:choose>
			<c:when test="${ member.num eq log }">
				<tr>
					<td><label for="updateAge">나이</label></td>
					<td><input type="number" name="updateAge" value="${ member.age }" required /></td>
				</tr>
				<tr>
					<td><label for="updateEmail">이메일</label></td>
					<td><input type="text" name="updateEmail" value="${ member.email }" required /></td>
				</tr>
				<tr>
					<td><label for="updatePhone">전화번호</label></td>
					<td><input type="text" name="updatePhone" value="${ member.phone }" required /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button>수정</button>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td>나이</td>
					<td>${ member.age }</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${ member.email }</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${ member.phone }</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</form>

<%@ include file="../../part/footer.jsp" %>