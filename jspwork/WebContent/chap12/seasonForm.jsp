<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="seasonBean" class="question.Season"></jsp:useBean>
	<jsp:setProperty property="month" name="seasonBean"/>
	
	<h4>����� �Է��� �����Դϴ�.</h4>
	<%
		out.print("�Էµ� ������"+seasonBean.getMonth()+"��(��) ������ "+seasonBean.process(seasonBean.getMonth()));
	%>
</body>
</html>