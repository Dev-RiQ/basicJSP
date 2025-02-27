<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));

boolean check = MemberDAO.getInstance().deleteAMemberByNum(num);

if(check){
%>
<script>
alert('회원 삭제 성공');
location.href='./01_memberList.jsp';
</script>
<%}else{%>
<script>
alert('회원 삭제 실패');
location.href='./01_memberList.jsp';
</script>
<%}%>
