<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="medianBean" class="question.Median"></jsp:useBean>
   <jsp:setProperty property="*" name="medianBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>����� �Է��� �����Դϴ�.</h4>
	
	<%
		out.println("�Էµ� ������ "+ medianBean.getOne()+"��"+medianBean.getTwo()+"��"+medianBean.getThree()+"�� �߰� ���� "+ medianBean.process(medianBean.getOne() ,medianBean.getTwo(), medianBean.getThree()));
	%>
</body>
</html>