<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	int value = Integer.parseInt(request.getParameter("gugu"));
		for(int i=1; i<10; i++){
			out.println(value+" * "+i+" = "+(value*i)+"<br>");
		}
	%>
</body>
</html>