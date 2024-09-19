<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- In this page we are calling dest.jsp --%>

<!-- Calling in Loop -->
<% 
	for(int i=1;i<=5;i++){ %>
		<%@ include file="dest.jsp" %>
	<%}
%><br>
Current Thread Name: <%= Thread.currentThread().getName() %>


<!-- **By using Directive Include we will get all content of dest.jsp -->

<!-- http://localhost:8086/include_directive/test_include -->