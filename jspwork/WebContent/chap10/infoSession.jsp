<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<h3>[���� ������ ������ �޼ҵ带 ����� ����]</h3>
	</center>
	<hr>
	<%
	 	String id_str = session.getId();
		long lasttime = session.getLastAccessedTime();
		long createdtime = session.getCreationTime();
		long time_used = (lasttime - createdtime) / 60000; //lasttime - createdtime�� ������ ������ �ӹ� �ð�
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean b_new = session.isNew();
	%>
		[1] ���� ID�� [<%= id_str %>]�Դϴ�.<br><hr>
		[2] ����� �� ����Ʈ�� �ӹ� �ð���<%= time_used %>�� �Դϴ�.<br><hr>
		[3] ������ ��ȿ �ð��� <%= inactive %>�� �Դϴ�.<br><hr>
		[4] ������ ���� ����� ������???<br><hr>
		
		<%
			if(b_new){
				out.println("��!! ���ο� ������ ��������ϴ�.");
			}else{
				out.println("�ƴϿ�!! ���ο� ������ ������ �ʾҽ��ϴ�.");
			}
		%>
		
</body>
</html>