<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="array4Bean" class="question.Array4"></jsp:useBean>
    <jsp:setProperty property="num" name="array4Bean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 정수의 갯수는 "+array4Bean.getNum()+"입니다. 랜덤한 수는<br> "+array4Bean.process(array4Bean.getNum()));
	%>
</body>
</html>