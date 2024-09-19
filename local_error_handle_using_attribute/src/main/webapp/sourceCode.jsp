<%@ page errorPage = "errorPage.jsp"%><!-- By using errorCode attribute we mapping a jsp file which will execute if error occur -->
<%
int res = 0;
res=Integer.parseInt("HI20"); //With Error
//res=Integer.parseInt("20"); //No Error
%>
Result: <%=res  %>

<!-- http://localhost:8086/local_error_handle_using_attribute/sourceCode.jsp -->