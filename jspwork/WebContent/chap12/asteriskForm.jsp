<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="asterisk" class="question.Asterisk"></jsp:useBean>
    <jsp:setProperty property="num" name="asterisk"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("�Էµ� ������ "+asterisk.getNum()+"�� <br>"+asterisk.process(asterisk.getNum()));
	%>
</body>
</html>