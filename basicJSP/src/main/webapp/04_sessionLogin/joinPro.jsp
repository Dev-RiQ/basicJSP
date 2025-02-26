<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

ArrayList<String> member = new ArrayList<>();
member.add(id);
member.add(pw);
member.add(name);

session.setAttribute("member", member);

%>
<h5><%=name %></h5>
<h5><%=id %></h5>
<h5><%=pw %></h5>
<a href="./login.jsp">로그인 하러가기</a>
</body>
</html>