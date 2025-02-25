<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	if(log != -100){%>
		<script>goBack('권한이 없습니다.')</script>
	<%} else{ 
	int idx = Integer.parseInt(request.getParameter("value"));
	String id = dao.getMemberId(idx);
	dao.deleteMember(idx);
	%>
		<script>goUrl(`<%=id%> 회원 삭제 완료`,'./memberList.jsp')</script>
	<%} %>
%>