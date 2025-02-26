<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="common.js"></script>
<%
	BoardDAO boardDao = null;
	if(session.getAttribute("boardDao") == null)
		response.sendRedirect("./index.jsp");
	else
		boardDao = (BoardDAO) session.getAttribute("boardDao");
%>