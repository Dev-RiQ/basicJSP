<%@page import="kr.basic.member.Member"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
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
	<%=MemberDAO.getInstance().printMemberList() %>
</table>

<%@ include file="./footer.jsp"%>