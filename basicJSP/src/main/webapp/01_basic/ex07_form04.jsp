<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1></h1>
숫자 1 : <input type="number" name="num1" id="num1"><br>
숫자 2 : <input type="number" name="num2" id="num2"><br>
<button>전송</button>
<a href="ex06_form03pro.jsp?num1=10&num2=20">ex06formPro 이동</a>
</body>
</html>
<script>

	function goURL(){
		let num1 = document.querySelector("#num1");
		let num2 = document.querySelector("#num2");
		if(!num1.value.trim() || !num2.value.trim()){
			document.querySelector("h1").innerText="값을 입력하세요";
			num1.value = "";
			num2.value = "";
		}else{
			location.href=`ex06_form03pro.jsp?num1=\${num1.value}&num2=\${num2.value}`;
		}
	}
	

	document.querySelector("button").addEventListener("click",goURL)
</script>