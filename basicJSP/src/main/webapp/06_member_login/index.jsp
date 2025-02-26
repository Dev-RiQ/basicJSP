<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("dao") == null)
	session.setAttribute("dao", MemberDAO.getInstance());
response.sendRedirect("./main.jsp");

%>