<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="seasonBean" class="question.Season"></jsp:useBean>
	<jsp:setProperty property="month" name="seasonBean"/>
	
	<h4>당신이 입력한 정보입니다.</h4>
	<%
		out.print("입력된 정수가"+seasonBean.getMonth()+"은(는) 계절이 "+seasonBean.process(seasonBean.getMonth()));
	%>
</body>
</html>