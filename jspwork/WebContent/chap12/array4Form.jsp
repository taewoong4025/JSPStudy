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
		out.print("�Էµ� ������ ������ "+array4Bean.getNum()+"�Դϴ�. ������ ����<br> "+array4Bean.process(array4Bean.getNum()));
	%>
</body>
</html>