<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie lastDate=null;
	String msg="";
	boolean found=false;
	String newValue = ""+ System.currentTimeMillis();
	Cookie[] cookies = request.getCookies();
	
	for(int i=0; i<cookies.length; i++){
		lastDate = cookies[i];
		
		if(lastDate.getName().equals("lastdateCookie")){
			found=true;
			break;
		}
	}
	
	if(!found){
		msg="ó�� �湮�Դϴ�.....";
		lastDate = new Cookie("lastdateCookie",newValue);
		lastDate.setMaxAge(365*24*60*60);
		lastDate.setPath("/");
		response.addCookie(lastDate);
	}else{
		long conv = Long.parseLong(lastDate.getValue());
		msg="����� ������ �湮 : "+new Date(conv);
		lastDate.setValue(newValue);
		response.addCookie(lastDate);
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2><%= msg %></h2>
</body>
</html>