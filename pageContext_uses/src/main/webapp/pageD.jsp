<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<b>This is PageD jsp</b><br>
	<%= "Attribute1 PAGE_SCOPE Value is: "+pageContext.findAttribute("atr1")%><br>
    <%= "Attribute2 REQUEST_SCOPE Value is: "+pageContext.findAttribute("atr2")%><br>
    <%= "Attribute3 SESSION_SCOPE Value is: "+pageContext.findAttribute("atr3")%><br>
    <%= "Attribute4 APPLICATION_SCOPE Value is: "+pageContext.findAttribute("atr4")%><br>
    