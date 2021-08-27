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
	<%! Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		int oneMonthLater = calendar.get(Calendar.MONTH)+2;
		int day = calendar.get(Calendar.DAY_OF_MONTH);
	%>
	<% out.println(year+"년 "+oneMonthLater+"월  "+day+"일 ");  %>
</body>
</html>