<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<!-- Oralce ������ commit �ʼ�! -->
	
	<%!
		Connection conn = null;
		PreparedStatement pstmt = null;
		DataSource ds = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from member2";
	%>
	
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
			conn = ((DataSource) (new InitialContext().lookup("java:comp/env/jdbcoracle"))).getConnection();
			System.out.println("DBCP ���� ����");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
		%>
		<tr>
			<td>
			<a href="updateMember.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("id")%></a></td>
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
	
	<a href="addFormDBCP.html">�߰��ϱ�</a>
</body>
</html>