<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="array2" class="question.Array2"></jsp:useBean>
<jsp:setProperty property="*" name="array2" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int[] intArray = new int[5];
		
		intArray[0] = array2.getNum1();
		intArray[1] = array2.getNum2();
		intArray[2] = array2.getNum3();
		intArray[3] = array2.getNum4();
		intArray[4] = array2.getNum5();
		
		out.print("입력된 정수가 "+array2.getNum1()+"와 "+array2.getNum2()+"와 "+array2.getNum3()+"와 "+array2.getNum4()+"와 "+array2.getNum5()+"에서 3의 배수는 "+array2.process(intArray));
	
	%>
</body>
</html>