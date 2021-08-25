<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% 
    request.setCharacterEncoding("UTF-8"); //한글 깨짐 방지
	
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	//out.println(userid);
	//out.println(password);
	
	if(userid.equals("관리자") && password.equals("1234")){
		//out.println("success");
		response.sendRedirect("response01_success.jsp"); // 페이지 여는 메소드
	}else{
		response.sendRedirect("response01_failed.jsp"); // 페이지 여는 메소드
		//out.println("fail");
	}
	
	%>
</body>
</html>