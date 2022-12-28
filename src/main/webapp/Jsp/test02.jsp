<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat Date = new SimpleDateFormat("yyyy년 MM월 dd일");
	%>
	<h4>오늘 날짜 <%= date %></h4>
</body>
</html>