<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String userid = request.getParameter("id");
	   String password = request.getParameter("password");
	
	 /*   if(request.isRequestedSessionIdValid() == true){
			out.println("세션 아이디가 유효합니다.<hr>");
		}
		else{
			out.println("세션 아이디가 유효하지 않습니다.<hr>");
		}
		
	   session.invalidate();
	   
	   if(request.isRequestedSessionIdValid() == true){
			out.println("세션 아이디가 유효합니다.<hr>");
		}
		else{
			out.println("세션 아이디가 유효하지 않습니다.<hr>");
		}
	    */
	    
	if(userid.equals("admin") && password.equals("admin1234")){
		session.setAttribute("userID", userid);
		response.sendRedirect("welcome.jsp");
	}
	else{
		out.println("아이디와 비밀번호를 확인해 주세요.<br>");	
	}
	 
	%>
</body>
</html>