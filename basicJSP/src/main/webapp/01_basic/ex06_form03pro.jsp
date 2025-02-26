<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값 받는 실습 process 페이지</title>
</head>
<body>
<%
	String temp1 = request.getParameter("num1");
	String temp2 = request.getParameter("num2");
	String print = null;
	if(temp1.isBlank() || temp2.isBlank()){
		print = "비어있는 값이 있습니다";
	}else{
		int num1 = Integer.parseInt(temp1);
		int num2 = Integer.parseInt(temp2);
		if(num1 > num2)
			print = num1+"값이 더 큽니다";
		else if(num1 < num2)
			print = num2+"값이 더 큽니다";
		else
			print = "두 값이 같습니다";
	}
	out.print("<h2>"+print+"</h2>");
%>
<a href="ex07_form04.jsp">ex07form 이동</a>
</body>
</html>