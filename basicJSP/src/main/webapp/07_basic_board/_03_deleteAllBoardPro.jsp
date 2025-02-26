<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	boardDao.deleteAllBoard();
%>
<script>goUrl('모든 데이터가 삭제되었습니다','./_00_main.jsp')</script>