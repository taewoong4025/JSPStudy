<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="alphabetBean" class="question.Alphabet"></jsp:useBean>
    <jsp:setProperty property="alphabet" name="alphabetBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("�Էµ� ���ĺ� "+alphabetBean.getAlphabet()+"�� "+ alphabetBean.process(alphabetBean.getAlphabet()));
	%>
</body>
</html>