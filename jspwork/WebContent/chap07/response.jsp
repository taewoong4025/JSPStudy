<%@page import="java.util.Calendar"%>
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
	Calendar cal = Calendar.getInstance();
	String am_pm;
	int hour = cal.get(Calendar.HOUR_OF_DAY);
	int minute = cal.get(Calendar.MINUTE);
	int second = cal.get(Calendar.SECOND);

	if (cal.get(Calendar.AM_PM) == 0) {
		am_pm = "AM";
	} else {
		am_pm = "PM";
	}
	%>

	<%
		response.setIntHeader("Refresh", 1);
	out.println("현재 시간은" + hour + ":" + minute + ":" + second + " " + am_pm);
	out.println("<br>");
	%>
	<p>
		<a href="response_data.jsp">Google 홈페이지로 이동하기</a>
	</p>
</body>
</html>