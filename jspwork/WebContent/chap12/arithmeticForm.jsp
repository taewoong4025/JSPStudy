<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="arithmetic" class="question.Arithmetic"></jsp:useBean>
    <jsp:setProperty property="*" name="arithmetic"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>����� �Է��� �����Դϴ�</h4>
	<%
		out.print(arithmetic.getNum1()+"�� "+arithmetic.getNum2()+"�� ��� ����� "+arithmetic.process(arithmetic.getNum1(),arithmetic.getOp(),arithmetic.getNum2()));
	%>
</body>
</html>