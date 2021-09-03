<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="div" class="question.divAndRemains"></jsp:useBean>
<jsp:setProperty property="num" name="div" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	out.print("입력된 정수 " + div.getNum() + "은(는)" + div.process(div.getNum()));
	%>
</body>
</html>