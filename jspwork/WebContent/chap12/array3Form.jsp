<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="array3Bean" class="question.Array3"></jsp:useBean>
    <jsp:setProperty property="num" name="array3Bean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 정수의 갯수는 "+array3Bean.getNum()+"입니다. 랜덤한 수는<br> "+array3Bean.process(array3Bean.getNum()));
	%>
</body>
</html>