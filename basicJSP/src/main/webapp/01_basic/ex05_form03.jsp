<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값 전달 실습 폼</title>
<style>
	table, table *{
		border: 1px solid;
	}
</style>
</head>
<body>
<form action="ex06_form03pro.jsp">
	<table>
		<tr>
			<td>첫번째 수1 : </td>
			<td><input type="number" name="num1" id="num1"/></td>
		</tr>
		<tr>
			<td>두번째 수2 :</td>
			<td><input type="number" name="num2" id="num2"/></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2"><button>전송 submit</button></td>
		</tr>
	</table>
</form>
</body>
</html>