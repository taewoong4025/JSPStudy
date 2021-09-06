<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array"></jsp:useBean>
<jsp:setProperty property="*" name="array" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int[] intArray = new int[5];
		intArray[0] = array.getNum1();
		intArray[1] = array.getNum2();
		intArray[2] = array.getNum3();
		intArray[3] = array.getNum4();
		intArray[4] = array.getNum5();
		
		out.print("입력된 정수가 "+ array.getNum1()+" "+array.getNum2()+" "+array.getNum3()+" "+array.getNum4()+" "+array.getNum5()+"에서 가장 큰 수는 : "+array.process(intArray));
	%>
</body>
</html>