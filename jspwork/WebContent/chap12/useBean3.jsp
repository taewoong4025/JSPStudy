<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="memBean" class="question.GuGuDan"></jsp:useBean>
	<h4>구구단 출력하기</h4>
	
	<%
		int num=5;
	
		for(int i = 1; i<10; i++){
			out.println(num+" * "+i+" = "+memBean.process(num, i)+"<br>");
		}
	%>
		
</body>
</html>