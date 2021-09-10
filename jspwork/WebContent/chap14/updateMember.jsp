<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
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
	<%!
		Connection conn=null;
		DataSource ds=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
	%>
	<%
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbcoracle");
			conn = ds.getConnection();
			System.out.println("DBCP ���� ����");
			
			StringBuffer selectQuery=new StringBuffer();
			selectQuery.append("SELECT name, class, tel FROM MEMBER2 where id=?");
			String id = request.getParameter("id");
			psmt = conn.prepareStatement(selectQuery.toString());
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()){
	%>
				<form method="post" action="updateProcess.jsp">
					���̵� : <input type="text" name="id" readonly value="<%= id %>"><br>
					�̸� : <input type="text" name="name" value="<%= rs.getString("name") %>"><br>
					ȸ����� : <input type="text" name="mclass" value="<%= rs.getString("class") %>"><br>
					��ȭ��ȣ : <input type="text" name="tel" value="<%= rs.getString("tel") %>"><br>
					<input type="submit" value="����"><br>
					<a href="viewMemberDBCP.jsp">��Ϻ���</a>
				</form>
	<%
			}else{
	%>
				<font color="red">���̵� ��3~~~</font>
				<a href="viewMemberDBCP.jsp">��Ϻ���</a>
	<%
			}
		}catch(NamingException ne){
			ne.printStackTrace();
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			try{
				if(conn != null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	%>
</body>
</html>














