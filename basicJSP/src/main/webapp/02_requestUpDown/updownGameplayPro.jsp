<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   int rdNum = Integer.parseInt(request.getParameter("rdNum"));
   int num = Integer.parseInt(request.getParameter("num"));
   String ans = "정답입니다. " + num;
   String location = "javascript:goBack();";
   String print = "뒤로가기";
   if(rdNum == num){
	   location = "./index.jsp";
	   print = "처음으로";
   }
   else if(rdNum > num)
	   ans = "내가 작다.";
   else
	   ans = "내가 크다.";
   ans += "<br><a href='"+location+"'>"+print+"</a>";
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2><%=ans %></h2>
</body>
</html>

<script>
	function goBack(){
		let page = document.createElement('form');
  		page.setAttribute('method', 'post');
  		page.setAttribute('action', './updownGameplay.jsp');
		let obj = document.createElement('input');
 		obj.setAttribute('type', 'hidden');
		obj.setAttribute('name', 'rdNum');
		obj.setAttribute('value', <%=rdNum%>);
  		page.appendChild(obj);
        document.body.appendChild(page);
        page.submit(); 
	}
		
</script>