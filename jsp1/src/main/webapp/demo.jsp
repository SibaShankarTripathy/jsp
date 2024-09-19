<!-- Step - 2 -->
<!-- This is a simple demo jsp program -->
<!-- This program does not contain any external jars as build path because we don't compile jsp when we are hit url/request jsp page then page compiler activate automatically then convert to Servlet and that Servlet provide .class code -->
<!-- Carefully see the folder structure under which folder it is created -->
<!-- url for this program http://localhost:8086/jsp1/demo.jsp -->
<b>Wel-Come to new jsp page</b>
<br>
<%
out.println("Current date & time: " + new java.util.Date());
/* out.println act as printWriter of servlet. It will display on browser */
System.out.println("Wel-Come");
/* System.out.println() will display in console window only */
%>
<br>
<%
int a = 10;
int b = 20;
out.println("Value of a: " + a);
out.println("Value of b: " + b);
out.println("Sum of a and b: " + (a + b));
%>

<h2>Thank you</h2>
<!-- Step - 3 -->
<!-- Add the server then run the program -->