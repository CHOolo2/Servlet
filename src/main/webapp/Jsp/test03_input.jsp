<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI</title>
</head>
<body>
	<form method="get" action="/Jsp/test03.jsp">
		<h3>체격 조건 입력</h3>
		<input type="text" name= "height">
		<label>cm</label>
		<input type="text" name="weight">
		<label>kg</label>
		<button type="submit">계산</button>
	</form>
</body>
</html>