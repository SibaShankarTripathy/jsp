<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<b>Staring JSP page</b><br>

<%
//	pageContext.setAttribute("atr1","Value1"); OR PAGE_SCOPE
	pageContext.setAttribute("atr1","V1-PAGE_SCOPE",pageContext.PAGE_SCOPE);
	pageContext.setAttribute("atr2","V2-REQUEST_SCOPE",pageContext.REQUEST_SCOPE);
	pageContext.setAttribute("atr3","V3-SESSION_SCOPE",pageContext.SESSION_SCOPE);
	pageContext.setAttribute("atr4","V4-APPLICATION_SCOPE",pageContext.APPLICATION_SCOPE);
%> 

	<%= "Attribute1 PAGE_SCOPE Value is: "+pageContext.findAttribute("atr1")%><br>
    <%= "Attribute2 REQUEST_SCOPE Value is: "+pageContext.findAttribute("atr2")%><br>
    <%= "Attribute3 SESSION_SCOPE Value is: "+pageContext.findAttribute("atr3")%><br>
    <%= "Attribute4 APPLICATION_SCOPE Value is: "+pageContext.findAttribute("atr4")%><br>
    
<!-- Here we are just forwarding setting value to implicit object ref  -->
<jsp:forward page="pageB.jsp"/>