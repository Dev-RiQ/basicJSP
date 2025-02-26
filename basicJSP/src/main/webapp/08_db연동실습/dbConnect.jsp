<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String database = "mvc1db";
String url = "jdbc:mysql://localhost:3306/"+database+"?charaterEncoding=UTF-8&serverTimezone=UTC";
String user = "root";
String password = "1234";
Connection conn = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
} catch (Exception e) {
	e.printStackTrace();
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% if(conn == null) {
	%>
	<h1>db 연동 실패</h1>
	<%
	} else {
	%>
	<h1>db 연동 성공</h1>
	<%
	}
	%>

</body>
</html>