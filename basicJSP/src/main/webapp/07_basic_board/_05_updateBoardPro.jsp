<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");
	boardDao.updateBoard(no, subject, contents);
%>
<script>goUrl('수정이 완료되었습니다','./_00_main.jsp')</script>