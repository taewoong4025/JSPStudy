<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="capitalBean" class="question.Capital"></jsp:useBean>
    <jsp:setProperty property="capital" name="capitalBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("�Էµ� ���ĺ� "+capitalBean.getCapital()+"�� <br>"+capitalBean.process(capitalBean.getCapital()));
	%>
</body>
</html>