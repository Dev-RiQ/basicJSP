<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 폼</title>
<style>
	body{
		margin: 0;
		height: 100vh;
		text-align: center;
	}
	body *{
		margin:0 auto;
	}
	h1{
		margin:40px 0;
	}
	
	
</style>
</head>
<body>
<h1>학번, 이름, 학년, 선택과목을 입력하는 폼</h1>
<form action="ex09_form05pro.jsp" method="post">
	<table border="1">
		<tr>
			<td>학번</td>
			<td><input type="number" name="hakbun" id="hakbun" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name" /></td>
		</tr>
		<tr>
			<td>학년</td>
			<td>
				<input type="radio" name="grade" id="grade" value="1"/>1학년
				<input type="radio" name="grade" id="grade" value="2" />2학년
				<input type="radio" name="grade" id="grade" value="3" />3학년
				<input type="radio" name="grade" id="grade" value="4" />4학년
			</td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td>
				<select name="subject" id="subject">
					<option>JAVA</option>
					<option>JAVASCRIPT</option>
					<option>SPRING</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
				<input type="checkbox" name="hobby" id="hobby" value="운동"/>운동
				<input type="checkbox" name="hobby" id="hobby" value="독서"/>독서
				<input type="checkbox" name="hobby" id="hobby" value="공부"/>공부
				<input type="checkbox" name="hobby" id="hobby" value="쇼핑"/>쇼핑
			</td>
		</tr>
		<tr>
			<td>메모</td>
			<td><textarea name="content" id="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><button>입력완료</button></td>
		</tr>
	</table>
</form>
</body>
</html>