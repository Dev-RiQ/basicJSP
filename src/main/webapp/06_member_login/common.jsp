<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="./common.js"></script>
<%
	MemberDAO dao = null;
	int log = -1;
	String state = "로그아웃";
	if(session.getAttribute("dao") == null)
		response.sendRedirect("./index.jsp");
	else{
		dao = (MemberDAO) session.getAttribute("dao");
		log = dao.getLog();
		if(log != -1)
			state = dao.getLoginName()+"님 로그인";
	}
%>