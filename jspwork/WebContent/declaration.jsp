<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! String str = "Hello, Java Server Pages";
	String getString(String string){
		return string;
	}%>
	<% out.print(getString(str));%>은 메소드 호출에 의한 결과값.<br>
	<% out.print(str);%>은 변수에 저장된 문자열을 바로 출력한 결과값.<br>
	
</body>
</html>