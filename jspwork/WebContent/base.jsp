<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요</h1>
	<hr>
	
	<%!
	String name = "홍길동";
	%>
	
	<%
 	String adress = "서울시 송파구 석촌동";	
	%>
	<br>
		이름 :
		<%= name %> <%-- 식(expression)을 이용해서 출력 --%>
	<br>
		주소 :
		<% out.println(adress); %> <%-- 스크립트릿 out 객체 이용해서 출력 --%>
	<br>
	<jsp:include page="age.jsp"></jsp:include>
</body>
</html>