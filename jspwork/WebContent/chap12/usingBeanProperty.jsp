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
	#. 빈 생성 후 저장된 값 출력하기<br><br>
	이름 : <jsp:getProperty property="name" name="myBean"/><br>
	나이 : <jsp:getProperty property="age" name="myBean"/><br>
	<hr>
	
	#. 값을 변경한 후 출력하기<br><br>
	<jsp:setProperty property="name" name="myBean" value="전수빈"/><br>
	<jsp:setProperty property="age" name="myBean" value="10"/><br>
	이름 : <jsp:getProperty property="name" name="myBean"/><br>
	나이 : <jsp:getProperty property="age" name="myBean"/><br>
</body>
</html>