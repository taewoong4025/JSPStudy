<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memBean" class="area.Rectangle"></jsp:useBean>

	<h4>�簢���� ���� ����ϱ�</h4>
	<% out.println("���� 20, ���� 30�� �簢���� ������"+memBean.process(20, 30)); %>
</body>
</html>