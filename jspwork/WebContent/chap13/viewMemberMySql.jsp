<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<!-- MSsql,Mysql��  �ڵ� commit! -->
	
<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String pwd = "1234";
	String sql = "select * from member2";%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>���̵�</td>
			<td>�̸�</td>
			<td>���</td>
			<td>��ȭ��ȣ</td>
		</tr>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pwd);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("id")%></td>
			<td><%=rs.getString("name")%></td>
			<td>
				<%
				int n_class = rs.getInt("class");
				if (n_class == 1) {
					out.print("�Ϲ�ȸ��");
				} else {
					out.print("������");
				}
				%>
			</td>
			<td><%=rs.getString("tel")%></td>
		</tr>
		<%
			}
		} catch (SQLException se) {
		se.printStackTrace();
		}finally{
			try{
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
			}
			catch(SQLException se){
				se.printStackTrace();
			}	
		}
		%>
	</table>
</body>
</html>