<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie info = new Cookie("testCookie","I am First Cookie!");	
	info.setMaxAge(365*24*60*60);
	info.setPath("/");
	response.addCookie(info);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <h2>쿠키를 처음 설정하는 중입니다........</h2>
</body>
</html>