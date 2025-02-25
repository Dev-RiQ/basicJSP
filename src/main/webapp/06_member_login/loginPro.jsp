<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	String id = request.getParameter("loginId");
	String pw = request.getParameter("loginPw");
	boolean isAdmin = id.equals("admin") && id.equals("admin");
	if(!dao.login(id, pw) && !(isAdmin)){%>
		<script>goBack('ID 혹은 PW 오류입니다.')</script>
	<%}else {
			if(isAdmin){id = "관리자"; }%>
		<script>goUrl(`<%=id %>님 로그인 성공! \n 홈 페이지로 이동합니다.`,'./main.jsp')</script>
	<%}%>