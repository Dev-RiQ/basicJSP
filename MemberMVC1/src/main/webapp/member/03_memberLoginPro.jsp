<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "test1";
String pw = "1111";

boolean check = MemberDAO.getInstance().isLoginPass(id,pw);

if(check){
%>
<script>
alert('로그인 성공');
location.href='./01_memberList.jsp';
</script>
<%}else{%>
<script>
alert('로그인 실패');
location.href='./02_memberLogin.jsp';
</script>
<%}%>