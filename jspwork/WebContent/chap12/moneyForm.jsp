<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="moneyBean" class="question.Money"></jsp:useBean>
    <jsp:setProperty property="money" name="moneyBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 금액이 "+moneyBean.getMoney()+"는 <br>"+moneyBean.process(moneyBean.getMoney()));
	%>
</body>
</html>