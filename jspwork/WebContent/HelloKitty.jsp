<!--<%@ %>�� ������. �������Ӽ��� ��Ÿ��. -->

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
	<!--jsp �±� : ��ũ��Ʈ��  -->
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