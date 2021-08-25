<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import="myUtil.HanConv" %>
  

  <%!
  	String s_id="hong";
  	String s_pw="1234";
  	String s_name="홍길동";
  %>
  <% 
  	if(s_id.equals(request.getParameter("id")) && s_pw.equals(request.getParameter("pw"))){
  		response.sendRedirect("main.jsp?name="+HanConv.toKorTwo(s_name)); // 쿼리스트링에 name 변수에 값을 넣어서 넘겨줌. 
  													    // 이때 넘어온 변수 값을 main.jsp에서 출력 
  	}
  	else{
  		response.sendRedirect("login.html");
  	}
  %>