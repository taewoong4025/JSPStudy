<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%! Date date = new Date();
 %>
 
 현재 날짜 :<%= date %><br>
 5의 제곱 :<%=Math.pow(5, 2)  %>
</body>
</html>