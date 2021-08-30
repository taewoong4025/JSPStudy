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
*. 빈 생성 후 저장된 값 출력하기 <br><br>
이름 : <%=myBean.getName() %><br>
나이 : <%=myBean.getAge() %>
<hr>
*. 빈 생성 후 저장된 값 출력하기 <br>
<% myBean.setAge(10);%><br>
<% myBean.setName("전수빈");%><br>

이름 : <%=myBean.getName() %><br>
나이 : <%=myBean.getAge() %>
</body>
</html>