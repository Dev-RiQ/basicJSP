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
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");

String[] member = {id,pw,name};
request.setAttribute("member", member);

boolean pass = id.equals(inputId) && pw.equals(inputPw);
if(pass){
	RequestDispatcher dis = request.getRequestDispatcher("./index.jsp");
	dis.forward(request, response);
%>
<script> 
alert('로그인 성공')
</script>
<%}else{ 
	RequestDispatcher dis = request.getRequestDispatcher("./login.jsp");
	dis.forward(request, response);

%>
<script> 
alert('로그인 실패')
location.href='./index.jsp?id=<%=id%>'
</script>
<%} %>
</body>
</html>