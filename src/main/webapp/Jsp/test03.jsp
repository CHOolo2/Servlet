<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<%
		//이름과 생년월일을 전달받고 이름과 나이를 보여주는 페이지
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		int hei = Integer.parseInt(height);
		int wei = Integer.parseInt(weight);
		
		String status = "";
		double bmi =  wei / ((hei / 100.0) * (hei / 100.0));
		if(bmi <=20){
			status = "저체중";
		}else if(bmi <= 25){
			status = "저정상";
		}else if(bmi <= 30){
			status = "과체중";
		}else{
			status = "비만";
		}
	%>

	<div class="container">
		<h1>BMI 측정 결과 </h1>
		<div class="display-4">당신은 <span class="text-info"><%= status %></sapn> 입니다</div>
		<div> BMI = <%= bmi%> </div>
</body>
</html>
