<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="rect" class="area.Rectangle2"></jsp:useBean>
	<jsp:setProperty property="*" name="rect"/>
	
	
	<h4>당신이 입력한 정보입니다</h4>
	<%
		out.print("가로 길이가"+rect.getWidth()+"이고, 세로 길이가 "+rect.getHeight()+"인 사각형의 면적은 "+rect.process(rect.getWidth(),rect.getHeight()));
	%>
</body>
</html>