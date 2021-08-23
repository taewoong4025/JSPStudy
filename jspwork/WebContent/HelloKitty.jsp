<!--<%@ %>는 지시자. 페이지속성을 나타냄. -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	[1]Good Morning!!!
	<br>
	<!--jsp 태그 : 스크립트릿  -->
	<%
		out.println("[2]Hello Kitty!!!");
		int a=0;
		for(int i = 0; i<10; i++){
			a+=i;
		}
		out.println(a);
	%>
</body>
</html>