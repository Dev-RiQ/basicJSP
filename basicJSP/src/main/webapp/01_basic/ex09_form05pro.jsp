<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String info = "";
    try{
    	String[] lists = {"hakbun","name","grade","subject","hobby","content"};
    	for(String list : lists){
    		String data = request.getParameter(list);
    		if(data == null || data.isBlank()) throw new Exception();
    		if(list.equals("hobby")){
    			String temp = "";
    			for(String hobby : request.getParameterValues(list))
    				temp += hobby + " ";
    			data = "<td>"+temp.trim()+"</td>";
    		}
   			info += "<td>"+data+"</td>";
    	}
    }catch(Exception e){
    	info = "<script>alert('입력되지 않은 값이 있습니다.')</script>";
    	info += "<script>window.history.back()</script>";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 처리 페이지</title>
</head>
<body>
<table style="margin:0 auto" border="1">
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>학년</th>
		<th>선택과목</th>
		<th>취미</th>
		<th>메모</th>
	</tr>
	<tr><%=info %></tr>
</table>

</body>
</html>