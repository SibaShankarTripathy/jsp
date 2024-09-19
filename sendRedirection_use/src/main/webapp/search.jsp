<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<b>This is search jsp page</b>

<!-- Simple example of SendRedirect(-) uses -->
<%
//	String res = "Top news story of today";
//	response.sendRedirect("https://www.google.com/search?q="+res);
%>

<!-- This bellow code getting value from different page and redirect to another page -->
<% 
	String res = request.getParameter("searchValue");
	response.sendRedirect("https://www.google.com/search?q="+res);
%>