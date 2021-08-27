<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>[쿠키의정보 얻어 오는 예제]</center>
</body>
</html>
<%
	Cookie[] cookies = request.getCookies();
	out.println("현재 설정된 쿠키의 갯수 =>" + cookies.length);
	out.println("<br><hr>");

for (int i = 0; i < cookies.length; i++) {
	out.println(i + "번째 쿠키의 이름=>" + cookies[i].getName());
	out.println("<br><br>");
	out.println("쿠키의 설정 된 값=>" + cookies[i].getValue());
	out.println("<br><hr>");
}
%>