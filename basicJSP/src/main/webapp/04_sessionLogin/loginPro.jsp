<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<%
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");

ArrayList<String> member = (ArrayList<String>) session.getAttribute("member");
boolean pass = member.get(0).equals(inputId) && member.get(1).equals(inputPw);
if(pass){
	RequestDispatcher dis = request.getRequestDispatcher("./index.jsp");
	dis.forward(request, response);
}else{ 
	RequestDispatcher dis = request.getRequestDispatcher("./login.jsp");
	dis.forward(request, response);
}
%>
</body>
</html>