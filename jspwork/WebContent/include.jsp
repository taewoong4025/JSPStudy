<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! Calendar calendar = Calendar.getInstance(); %>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<%@ include file="header.jsp"%>
���� �ð�:<%= calendar.getTime() %>
</body>
</html>