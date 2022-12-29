<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>POST Method Ex</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		
		//String food = request.getParameter("food");
		String[] foodArray = request.getParameterValues("food");
		//민초 피자
		String foodString = " ";
		for(int i = 0; i < foodArray.length; i++){
			//foodString = foodString + foodArray[i] + " ";
			foodString += foodArray[i] + " ";
		}	
		%>
	
	<div><%= nickname%></div>
	<div><%= animal %></div>
	<div><%= fruit%></div>
	<div><%= foodString %></div>
	
</body>
</html>