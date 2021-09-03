<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="evenNumber" class = "question.EvenNumber"></jsp:useBean>
    <jsp:setProperty property="num" name="evenNumber"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	out.print("입력된 정수가 "+evenNumber.getNum()+"의 짝수들의 합계는 "+evenNumber.process(evenNumber.getNum()));
	%>
</body>
</html>