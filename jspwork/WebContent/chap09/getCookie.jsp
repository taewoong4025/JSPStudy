<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>[��Ű������ ��� ���� ����]</center>
</body>
</html>
<%
	Cookie[] cookies = request.getCookies();
	out.println("���� ������ ��Ű�� ���� =>" + cookies.length);
	out.println("<br><hr>");

for (int i = 0; i < cookies.length; i++) {
	out.println(i + "��° ��Ű�� �̸�=>" + cookies[i].getName());
	out.println("<br><br>");
	out.println("��Ű�� ���� �� ��=>" + cookies[i].getValue());
	out.println("<br><hr>");
}
%>