<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		Connection conn = null;
		
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String pwd = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			DriverManager.getConnection(url, user, pwd);
			out.print("�����ͺ��̽� ������ �����߽��ϴ�.");			
		}
		catch(SQLException ex){
			out.print("�����ͺ��̽� ������ �����߽��ϴ�.<br>");			
			out.print("SQLException : "+ex.getMessage());			
		}finally{
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>