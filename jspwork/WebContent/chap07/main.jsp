<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import="myUtil.HanConv" %>
<%
String s_name = request.getParameter("name"); //testlogin.jsp에서 쿼리스트링으로 넘겨준 값을 s_name 변수로 받아서 사용.
%>
<%=HanConv.toKor(s_name)%>님 안녕하세요!<br>
   저희 홈페이지에 방문해 주셔서 감사합니다.<br>
   즐거운 시간 되세요....