<%@page import="myUtil.HanConv"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String pwd = "1234";%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = "", pw = "", name = "", p1 = "", p2 = "", p3 = "", sclass = "";
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	name = request.getParameter("name");
	sclass = request.getParameter("mclass");
	p1 = request.getParameter("phone1");
	p2 = request.getParameter("phone2");
	p3 = request.getParameter("phone3");
	
	try {

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pwd);
		stmt = conn.createStatement();
		StringBuffer insertQuery = new StringBuffer();
		insertQuery.append("insert into member2 values('");
		insertQuery.append(id + "', '");
		insertQuery.append(pw + "', '");
		insertQuery.append(HanConv.toKor(name) + "',");
		insertQuery.append(sclass + ", '");
		insertQuery.append(p1 + "-" + p2 + "-" + p3 + "')");

		System.out.println(insertQuery);
		int re = stmt.executeUpdate(insertQuery.toString());

		if (re == 1) {
	%>
			�߰� ����
			<br>
			<a href="addFormMySql.html">�߰��۾�</a>��
			<a href="viewMemberMySql.jsp">�˻��۾�</a>
	<%
		}else{
	%>
			<font color="red">�߰� ����</font>
	<%
		}

	} catch (SQLException se) {
		se.printStackTrace();
	%>
		�����ҷ� ��� �� �ٽ� �õ�
	<%
		}
	%>
</body>
</html>