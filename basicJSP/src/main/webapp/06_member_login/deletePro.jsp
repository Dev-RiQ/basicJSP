<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	String pw = request.getParameter("deletePw");
	if(!dao.deleteMember(pw)){%>
		<script>goBack('비밀번호를 확인해주세요.')</script>
	<%}else {%>
		<script>goUrl(`회원 탈퇴 완료. \n 홈 페이지로 이동합니다.`,'./main.jsp')</script>
	<%}%>