<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<b>This is source page</b>
<!-- Only forward NOT sending any value -->>
<%-- <jsp:forward page="dest.jsp"/> --%>


<!-- Forward with values -->>
<% float prdprc = 50000f; %>
<jsp:forward page="dest.jsp">
	<jsp:param value="HPLaptop" name="lpy"/>
	<jsp:param value="<%= prdprc %>" name="price"/>
</jsp:forward>

<b>End of Source Page</b><!-- This line will not execute because in this jsp:forward tag only will display output of destination page -->


<!-- http://localhost:8086/action_tag_forward/source.jsp -->