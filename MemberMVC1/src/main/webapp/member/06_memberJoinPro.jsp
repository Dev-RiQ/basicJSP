<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "qwer";
String pw="1234";
String name="아무개";
int age = 12;
String email = "qwer@test.com";
String phone = "010-1111-1937";

boolean check = MemberDAO.getInstance().insertAMember(id,pw,name,age,email,phone);
if(check){
%>
<script>
alert('가입 성공');
location.href='./01_memberList.jsp';
</script>
<%}else{%>
<script>
alert('가입 실패');
location.href='./05_memberJoin.jsp';
</script>
<%}%>