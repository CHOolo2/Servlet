<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.text.SimpleDateFormat" %> 

<%-- 현재시간을 보여주는 태그--%>
<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 mm월 dd일");
	
	String dateString = formatter.format(now);
%>
<span>
	현재시간 : <%= dateString %>
</span>