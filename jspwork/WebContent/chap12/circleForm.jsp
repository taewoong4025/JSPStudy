<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h4>����� �Է��� �����Դϴ�.</h4>

	<jsp:useBean id="memBean" class="area.Circle2"></jsp:useBean>
	<jsp:setProperty property="radius" name="memBean"/>	
		
	
	<%
		out.print("�������� "+memBean.getRadius()+"�� ���� ������ "+memBean.process(memBean.getRadius()));
	%>	
	
</body>
</html>