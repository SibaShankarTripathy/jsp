<!-- For Global exception we need to map jsp file in web.xml -->

<%
String str = null; //Used for NullPointer Exception
%>

<%-- All bellow code containing several types of exceptions so comment/uncomment as per requirement --%>

String Value:
<%=str.length()%>
<!-- Used for NullPointer Exception -->
Integer Value:
<%=Integer.parseInt("10KL")%>
<!-- Used for NumberFormat Exception -->
Division Value:
<%=10 / 0%>
<!-- Used for Arithmetic Exception -->

<!-- http://localhost:8086/global_error_handle_using_attribute/sourceCode.jsp -->