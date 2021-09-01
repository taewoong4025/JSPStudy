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

	<h4>사각형의 면적 출력하기</h4>
	<% out.println("가로 20, 세로 30인 사각형의 면적은"+memBean.process(20, 30)); %>
</body>
</html>