<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="myBean" class="hello.helloBean" scope="page"></jsp:useBean>
<hr>
*. �� ���� �� ����� �� ����ϱ� <br><br>
�̸� : <%=myBean.getName() %><br>
���� : <%=myBean.getAge() %>
<hr>
*. �� ���� �� ����� �� ����ϱ� <br>
<% myBean.setAge(10);%><br>
<% myBean.setName("������");%><br>

�̸� : <%=myBean.getName() %><br>
���� : <%=myBean.getAge() %>
</body>
</html>