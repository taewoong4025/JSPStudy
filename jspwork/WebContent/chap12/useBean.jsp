<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="memBean" class="area.Circle"></jsp:useBean>
	
		<h4>���� ���� ����ϱ�</h4>
		�������� 10�� ���� ������ <%= memBean.process(10) %>
</body>
</html>