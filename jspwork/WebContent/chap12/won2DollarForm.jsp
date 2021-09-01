<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dollar" class="question.Won2dollar"></jsp:useBean>
	<jsp:setProperty property="won" name="dollar"/>
	
	<h4>당신이 입력한 정보입니다</h4>
	<%
		out.println("입력된 원화가 "+(double)dollar.getWon()+"원은 $"+dollar.process(dollar.getWon()));
	%>
</body>
</html>