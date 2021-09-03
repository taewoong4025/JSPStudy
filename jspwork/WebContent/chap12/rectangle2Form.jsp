<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="rectangle" class="question.Rectangle"></jsp:useBean>
    <jsp:setProperty property="x" name="rectangle"/>
    <jsp:setProperty property="y" name="rectangle"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>당신이 입력한 정보입니다.</h4>
	<%
	out.print("("+rectangle.getX()+","+rectangle.getY()+")는 "+rectangle.process(rectangle.getX(), rectangle.getY()));
	%>
</body>
</html>