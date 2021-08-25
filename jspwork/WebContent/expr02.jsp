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
	 <h3>[표현식(expression)에 관한 예제]</h3>
	</center>
	<hr>
	<%!
		String str="안녕하세요!";
	 	int a = 5, b=-5;
	 	
	 	public int abs(int n){
	 		if(n<0){
	 			n=-n;
	 		}
	 		return n;
	 	}
	%>
	<!-- 표현식으로 출력하는 방법 out객체없고, 세미콜론 없음.  -->
	<%= str %>
	<br>
	a:<%= a %>의 절대값은 <%= abs(a) %>
	<br>
	b:<%= b %>의 절대값은 <%= abs(a) %>
	
</body>
</html>