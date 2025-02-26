<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 값 받는 파일</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	int age = 0;
	if (!request.getParameter("age").isBlank())
		age = Integer.parseInt(request.getParameter("age"));
	else
		out.println("<p>빈칸은 입력 불가능합니다</p>");
	if (age < 0) {
		age = 0;
		out.println("<p>나이는 0이상 값이어야합니다</p>");
	}
%>
<h1>이름 <%=name %></h1>
<h1>나이 <%=age %></h1>
</body>
</html>