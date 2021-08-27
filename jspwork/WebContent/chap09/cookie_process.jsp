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
	String userid = request.getParameter("id");
	String password = request.getParameter("password");
	
	/* out.println(userid);
	out.println(password); */

	if(userid.equals("admin") && password.equals("admin1234")){
		Cookie info = new Cookie("userID",userid);
		info.setMaxAge(365*24*60*60);
		//info.setPath("/");
		response.addCookie(info);
		
		response.sendRedirect("welcome.jsp");
	}
	else{
		out.println("아이디와 비밀번호를 확인해 주세요.<br>");
		%>
		<a href="cookie.jsp">돌아가기</a>
		<%
	}
%>

</body>
</html>