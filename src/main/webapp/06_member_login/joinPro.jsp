<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	String id = request.getParameter("joinId");
	String pw = request.getParameter("joinPw");
	String name = request.getParameter("joinName");
	String gender = request.getParameter("joinGender");
	if(!dao.addMember(id, pw, name, gender.equals("true")? true : false)){%>
		<script>goBack('중복된 아이디입니다.')</script>
	<%}else {%>
		<script>goUrl(`<%=id%>님 가입을 환영합니다! \n 로그인 페이지로 이동합니다.`,'./loginForm.jsp')</script>
	<%}%>