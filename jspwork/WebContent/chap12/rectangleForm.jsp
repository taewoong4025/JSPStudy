<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="rect" class="area.Rectangle2"></jsp:useBean>
	<jsp:setProperty property="*" name="rect"/>
	
	
	<h4>����� �Է��� �����Դϴ�</h4>
	<%
		out.print("���� ���̰�"+rect.getWidth()+"�̰�, ���� ���̰� "+rect.getHeight()+"�� �簢���� ������ "+rect.process(rect.getWidth(),rect.getHeight()));
	%>
</body>
</html>