<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		//접속 -> 쿼리 수행
		musqlservice.connect();
		
		String query = "SELECT * FROM `favorite` ORDER BY `id` DESE;"
	%>
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트주소</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%=while(resultSet.next()) { %>
			<tr>
				<tb><%=resultSet.getString("name") %></tb>
				<tb><a href="" target="_blank"><%=resultSet.getString("url") %></a></tb>
				<td><a href="/db/favorite/delete?id=<%=resultSet.getInt("id")%>">삭제</a></td>
		<% } %>
		</tbody>
	</table>
		
	
	
	</table>
</body>
</html>