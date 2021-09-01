<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<jsp:useBean id="three" class="question.Three"></jsp:useBean>
	<jsp:setProperty property="number" name="three"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
			out.print("입력된 수가"+three.getNumber()+"는"+three.process(three.getNumber()));
		%>
</body>
</html>