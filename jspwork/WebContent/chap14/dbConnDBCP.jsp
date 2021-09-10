<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.SQLException"%>
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

	<!-- DBCP�� DB���� �ϴ� ���
		<Resource auth="Container" driverClassName="oracle.jdbc.driver.OracleDriver" maxActive="100" maxIdle="30" maxWait="10000" name="jdbcoracle" password="tiger" type="javax.sql.DataSource" url="jdbc:oracle:thin:@localhost:1521:xe" username="scott"/>
		�� WAS(TOMCAT)�� server.xml ���Ͽ� <CONTEXT docBase="�����ۼ��ϰ��ִ� ����">���ҽ��� ���⿡ ��ġ ��Ŵ</CONTEXT>
			
    -->
	
	<%!Connection conn = null;
		DataSource ds = null;
	%>
	
	<%
		try {
		Context ctx = new InitialContext();
		ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		conn = ds.getConnection();
		//conn = ((DataSource) (new InitialContext().lookup("java:comp/env/jdbcoracle"))).getConnection();
		System.out.println("DBCP ���� ����");
	} catch (NamingException ne) {
		ne.printStackTrace();

	} catch (SQLException se) {
		se.printStackTrace();
	}finally{
		try{
			if(conn != null){
				conn.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
</body>
</html>