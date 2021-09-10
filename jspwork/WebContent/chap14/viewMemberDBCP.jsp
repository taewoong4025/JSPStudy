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
	
	<!-- Oralce 에서는 commit 필수! -->
	
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
			<td>아이디</td>
			<td>이름</td>
			<td>등급</td>
			<td>전화번호</td>
		</tr>
		<%
			try {
			conn = ((DataSource) (new InitialContext().lookup("java:comp/env/jdbcoracle"))).getConnection();
			System.out.println("DBCP 연동 성공");
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
					out.print("일반회원");
				} else {
					out.print("교수님");
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
	
	<a href="addFormDBCP.html">추가하기</a>
</body>
</html>