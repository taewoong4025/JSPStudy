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
		out.print("�Էµ� 3���� ���� "+triangle.getNum1()+"�� "+triangle.getNum2()+"�� "+triangle.getNum3()+"��"+triangle.process(triangle.getNum1(),triangle.getNum2(),triangle.getNum3()));
	%>
</body>
</html>