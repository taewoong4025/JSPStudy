<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page isErrorPage = "true" %>
    <%
    	response.setStatus(HttpServletResponse.SC_OK);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� �߻�
<br>
<%= exception.getMessage() %>
</body>
</html>