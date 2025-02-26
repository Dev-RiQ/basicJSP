<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	String writer = request.getParameter("writer");
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");
	boardDao.addBoard(writer, subject, contents);
%>
<script>goUrl('게시글이 등록되었습니다','./_00_main.jsp')</script>