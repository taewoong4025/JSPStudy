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
	
	<h4>����� �Է��� �����Դϴ�</h4>
	<%
		out.println("�Էµ� ��ȭ�� "+(double)dollar.getWon()+"���� $"+dollar.process(dollar.getWon()));
	%>
</body>
</html>