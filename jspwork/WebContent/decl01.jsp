

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 선언부  -->
	<%!
	int value = 337;
	public int getInt() {
		return value;
	}%>
<!-- 출력  -->
	<%
		out.print(getInt());
	%>
</body>
</html>