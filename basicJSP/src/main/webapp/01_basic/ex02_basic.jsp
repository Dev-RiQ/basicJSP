<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
LocalDate today = LocalDate.now();
String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석  => 소스 보기하면 보임-->
	<%--
	jsp인식하는 자바 주석 => 소스 보기하면 안보임
	<% 붙은 부분 후처리 후 삭제
	
	JSP : java server page => 웹 컨테이너가 jsp파일 처리
		=> html 페이지 안에 jsp태그 사용 가능 <%= %>
	[1] 지시자 (directive)태그 : <%@ %> => 정의 및 import
	[2] 표현식 (expression)태그 : <%= %> => 결과값 출력 (return String)
	[3] 스크립트릿 (scriptlet)태그 : <% %> => 그냥 자바 
	[4] 선언자 (declaration)태그 : <%! %> => 거의 안씀 
 --%>
	<h1>ex02.basic.jsp</h1>
	<h1>
		3 + 2 =
		<%=3 + 2%></h1>
	<%
	out.println("<h2>" + today + "</h2>");
	%>
	<h3>
		오늘은
		<%=now%></h3>
	<%
	int[] arr = { 10, 20, 30, 40, 50 };
	%>
	<p>자바 배열 출력하기</p>
	<%
	for (int i = 0; i < arr.length; i++)
		out.println("<p>" + arr[i] + "</p>");
	%>
	<hr>
	<p>자바 배열 출력하기2</p>
	<%
	for (int i = 0; i < arr.length; i++) {
	%>
	<p><%=arr[i]%></p>
	<%
	}
	%>
</body>
</html>