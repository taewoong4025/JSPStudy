<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import="myUtil.HanConv" %>
<%
String s_name = request.getParameter("name"); //testlogin.jsp���� ������Ʈ������ �Ѱ��� ���� s_name ������ �޾Ƽ� ���.
%>
<%=HanConv.toKor(s_name)%>�� �ȳ��ϼ���!<br>
   ���� Ȩ�������� �湮�� �ּż� �����մϴ�.<br>
   ��ſ� �ð� �Ǽ���....