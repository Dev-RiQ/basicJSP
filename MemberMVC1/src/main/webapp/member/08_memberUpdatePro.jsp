<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
int age = Integer.parseInt(request.getParameter("updateAge"));
String email= request.getParameter("updateEmail");
String phone = request.getParameter("updatePhone");

boolean check = MemberDAO.getInstance().updateAMemberByNum(num, age, email, phone);

if(check){
%>
<script>
alert('정보 수정 성공');
location.href='./01_memberList.jsp';
</script>
<%}else{%>
<script>
alert('정보 수정 실패');
location.href='./01_memberList.jsp';
</script>
<%}%>
