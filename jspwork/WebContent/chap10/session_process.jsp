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
			out.println("���� ���̵� ��ȿ�մϴ�.<hr>");
		}
		else{
			out.println("���� ���̵� ��ȿ���� �ʽ��ϴ�.<hr>");
		}
		
	   session.invalidate();
	   
	   if(request.isRequestedSessionIdValid() == true){
			out.println("���� ���̵� ��ȿ�մϴ�.<hr>");
		}
		else{
			out.println("���� ���̵� ��ȿ���� �ʽ��ϴ�.<hr>");
		}
	    */
	    
	if(userid.equals("admin") && password.equals("admin1234")){
		session.setAttribute("userID", userid);
		response.sendRedirect("welcome.jsp");
	}
	else{
		out.println("���̵�� ��й�ȣ�� Ȯ���� �ּ���.<br>");	
	}
	 
	%>
</body>
</html>