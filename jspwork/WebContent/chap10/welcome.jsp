<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("userID");

	if(id==null){
				
		response.sendRedirect("session_out.jsp");
	}
	
	%>
	<h4> <%=id %>�� �ݰ����ϴ�.</h4>
	<a href="session_out.jsp">�α׾ƿ�</a>
	
</body>
</html>