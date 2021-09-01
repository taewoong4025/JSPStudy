<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h4>당신이 입력한 정보입니다.</h4>

	<jsp:useBean id="memBean" class="area.Circle2"></jsp:useBean>
	<jsp:setProperty property="radius" name="memBean"/>	
		
	
	<%
		out.print("반지름이 "+memBean.getRadius()+"인 원의 면적은 "+memBean.process(memBean.getRadius()));
	%>	
	
</body>
</html>