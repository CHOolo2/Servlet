<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>POST Method Ex</title>
</head>
<body>
	<form method="post" action="/Jsp/ex03.jsp">
		<label>�г���</label>
		<input type="text" name="nickname">
	</form>
		<br>
		<h3>������ ����� ����</h3>
		<lable>������<input type="radio" name="animal" value="dog"></lable>
		<lable>�����<input type="radio" name="animal" value="cat"></lable>
		<lable>����<input type="radio" name="animal" value="lion"></lable>
		
		<h3>�����ϴ� ������ �����ϼ���</h3>
		<select name="fruit">
			<option value="peach">������</option>
			<option>����</option>
			<option value = "banana">�ٳ���</option>
		</select>
		
		<h3>�����ϴ� ������ ��� ������</h3>
		<label>��Ʈ����<input type="checkbox" name="food" value="����"></label>
		<label>�Ͽ��̾� ����<input type="checkbox" name="food" value="����"></label>
		<label>������<input type="checkbox" name="food" value="������"></label>
		<br>
		<button type="submit">�Է�</button>
	</form>
</body>
</html>