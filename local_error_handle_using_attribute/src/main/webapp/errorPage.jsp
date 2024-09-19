<%@ page isErrorPage="true"%><!-- By keeping isErrorPage = true, we are confirming this page will show the error of specific jsp page -->
<h2 style="color:blue" align=center>This is Error display page</h2><br>
Exception type is: <%= exception.toString() %><!-- In this error page only we can use exception object -->
