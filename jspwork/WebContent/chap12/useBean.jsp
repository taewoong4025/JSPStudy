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
	
		<h4>원의 면적 출력하기</h4>
		반지름이 10인 원의 면적은 <%= memBean.process(10) %>
</body>
</html>