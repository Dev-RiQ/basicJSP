<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("joinId");
if(MemberDAO.getInstance().hasId(id)) {%>
	<script>
		alert('중복된 아이디입니다.');
		location.href='./05_memberJoin.jsp';
	</script>
<%}

String pw = request.getParameter("joinPw");
String name = request.getParameter("joinName");
int age = Integer.parseInt(request.getParameter("joinAge"));
String email = request.getParameter("joinEmail");
String phone = request.getParameter("joinPhone");

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