<%@page import="kr.basic.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	Member member = MemberDAO.getInstance().getAMemberByNum(num);
	String id = member.getId();
	String pw = member.getPass();
	String name = member.getName();
	int age = member.getAge();
	String email = member.getEmail();
	String phone = member.getPhone();

%>
<h1><%=id %> 회원의 상세보기</h1>

<form action="./06_memberJoinPro.jsp" method="post">
	<table>
		<tr>
			<td>번호</td>
			<td><%=num %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=id %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=pw %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		<%if(num == MemberDAO.getInstance().getLog()) {%>
		<tr>
			<td><label for="updateAge">나이</label></td>
			<td><input type="number" name="updateAge" value="<%=age %>" required /></td>
		</tr>
		<tr>
			<td><label for="updateEmail">이메일</label></td>
			<td><input type="text" name="updateEmail" value="<%=email %>" required /></td>
		</tr>
		<tr>
			<td><label for="updatePhone">전화번호</label></td>
			<td><input type="text" name="updatePhone" value="<%=phone %>" required /></td>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>
			</td>
		</tr>
		<%} else {%>
		<tr>
			<td>나이</td>
			<td><%=age %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=email %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=phone %></td>
		</tr>
		<%} %>
	</table>
</form>
<%@ include file="./footer.jsp"%>