<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="twoArrayBean" class="question.TwoArray"></jsp:useBean>
   <jsp:setProperty property="num" name="twoArrayBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	out.print(twoArrayBean.getNum()+"*"+twoArrayBean.getNum()+"는 <br>"+twoArrayBean.process(twoArrayBean.getNum()));
	%>
	
</body>
</html>