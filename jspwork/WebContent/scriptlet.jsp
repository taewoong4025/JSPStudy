<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!

SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
Date now = new Date();
	
%>
<% out.println(sDate.format(now)); %>
</body>
</html>