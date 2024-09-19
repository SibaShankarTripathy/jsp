<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- In this page we are calling dest.jsp --%>

<!-- Calling Normal -->
<b>This is source file</b>
<% 
	for(int i=1;i<=5;i++){ %>
		<jsp:include page="dest.jsp" flush="true"/><br>
	<%}
%><br>

<b>This is end of source page</b>


<!-- **By using Action Include we will get only output content of dest.jsp not all content-->

<!-- http://localhost:8086/action_tag_include/source.jsp -->