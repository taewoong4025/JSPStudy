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
	<h4>당신이 입력한 정보입니다.</h4>
	
	<%
		out.println("입력된 정수가 "+ medianBean.getOne()+"와"+medianBean.getTwo()+"와"+medianBean.getThree()+"와 중간 값은 "+ medianBean.process(medianBean.getOne() ,medianBean.getTwo(), medianBean.getThree()));
	%>
</body>
</html>