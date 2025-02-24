<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int rdNum = Integer.parseInt(request.getParameter("rdNum"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>치트키 <%=rdNum %></p>
<form action="./updownGameplayPro.jsp" method="post">
<input type="hidden" name="rdNum" value=<%=rdNum %>>
<input type="number" name="num" required/>
<button>전송</button>
</form>
</body>
</html>