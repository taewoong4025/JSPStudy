<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="triangle" class="question.Triangle"></jsp:useBean>
    <jsp:setProperty property="*" name="triangle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 3변의 값이 "+triangle.getNum1()+"와 "+triangle.getNum2()+"와 "+triangle.getNum3()+"은"+triangle.process(triangle.getNum1(),triangle.getNum2(),triangle.getNum3()));
	%>
</body>
</html>