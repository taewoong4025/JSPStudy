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
		out.print("입력된 알파벳 "+alphabetBean.getAlphabet()+"은 "+ alphabetBean.process(alphabetBean.getAlphabet()));
	%>
</body>
</html>