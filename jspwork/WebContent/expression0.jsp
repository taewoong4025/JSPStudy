<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
Calendar today = Calendar.getInstance();
%>
 Current Time : 
	<%=
	today.get(Calendar.HOUR_OF_DAY)
	%>시
	<%=
	today.get(Calendar.MINUTE)
	%>분
	<%=
	today.get(Calendar.SECOND)
	%>초
</body>
</html>