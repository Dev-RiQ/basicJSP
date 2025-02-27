<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO.getInstance().logout();
%>
<script>
alert('로그아웃 완료');
location.href='./01_memberList.jsp';
</script>