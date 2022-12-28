<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		//이름과 생년월일을 전달받고 이름과 나이를 보여주는 페이지
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		int hei = Integer.parseInt(height);
		int wei = Integer.parseInt(weight);
		
		double bmi =  wei / ((hei / 100.0) * (hei / 100.0));
		if(bmi <=20){
			out.println("저체중");
		}else if(bmi <= 25){
			out.println("정상");
		}else if(bmi <= 30){
			out.println("과체중");
		}else{
			out.println("비만");
		}
	%>
	<h4><%= bmi %></h4>
</body>
</html>