<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	String id = request.getParameter("updateId");
	String pw = request.getParameter("updatePw");
	String name = request.getParameter("updateName");
	String gender = request.getParameter("updateGender");
	if(!dao.updateMember(id, pw, name, gender.equals("true")? true : false)){%>
		<script>goBack('ID 혹은 PW를 확인해주세요.')</script>
	<%}else {%>
		<script>goUrl(`회원정보 수정 완료! \n 홈 페이지로 이동합니다.`,'./main.jsp')</script>
	<%}%>