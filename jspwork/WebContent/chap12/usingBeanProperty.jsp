<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="myBean" class="hello.helloBean"></jsp:useBean>
	#. �� ���� �� ����� �� ����ϱ�<br><br>
	�̸� : <jsp:getProperty property="name" name="myBean"/><br>
	���� : <jsp:getProperty property="age" name="myBean"/><br>
	<hr>
	
	#. ���� ������ �� ����ϱ�<br><br>
	<jsp:setProperty property="name" name="myBean" value="������"/><br>
	<jsp:setProperty property="age" name="myBean" value="10"/><br>
	�̸� : <jsp:getProperty property="name" name="myBean"/><br>
	���� : <jsp:getProperty property="age" name="myBean"/><br>
</body>
</html>