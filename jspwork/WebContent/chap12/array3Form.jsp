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
		out.print("�Էµ� ������ ������ "+array3Bean.getNum()+"�Դϴ�. ������ ����<br> "+array3Bean.process(array3Bean.getNum()));
	%>
</body>
</html>