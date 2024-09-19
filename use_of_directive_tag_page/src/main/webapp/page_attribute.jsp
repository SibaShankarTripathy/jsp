<!-- Directive tag page contain several attribute like : language, isThreadSafe, contentType, pageEncoding -->


<%-- <%@ page language="c"%> --%> <!-- Error Name: invalid language attribute -->
<%@ page language="java"%> <!-- It indicate on language your are used -->

<%@ page import="java.util.*"%><!-- Used to import different packages for program -->
<b>Current Date and Time: </b><%= new Date() %><br>

<%@ page info="Use of info attribute"%><!-- Used to explain about this JSP information. It will reflect in JES class -->

<%-- <%@ page contentType="text/Html charset=ISO-8859-1" %><!-- If we are using "text/plain" then in browser it will show as it is means with out applying HTML (By default it is HTML type)--> --%>
<%= "This is testing for contenType attribute" %>

<%-- <%@ page contentType="text/Html charset=UTF-8" %><!-- By using this charset = UTF-8 we can use multiple language --> --%>
<!-- <b>How are you</b><br> -->
<!-- <b>तुम कैसे हो</b><br>For different language other then English we need UTF-8 either in charset or -->
<!-- <b>তুমি কেমন আছো</b><br> -->
<!-- <b>तू कइसन बारअ</b><br> -->
<!-- <b>ଆପଣଙ୍କ ହାଲଚାଲ୍‌ କଣ</b><br> -->
<!-- OR --><br>
<%@ page pageEncoding = "UTF-8" %>
<b>How are you</b><br>
<b>तुम कैसे हो</b><br><!-- For different language other then English we need UTF-8 either in charset or -->
<b>তুমি কেমন আছো</b><br>
<b>तू कइसन बारअ</b><br>
<b>ଆପଣଙ୍କ ହାଲଚାଲ୍‌ କଣ</b><br>

<%@ page buffer="10kb" autoFlush="true" %>  <!-- It will reflect in JES file (read document)  -->


<%@ page isELIgnored ="false" %>  <!-- This is use of EL- Expression Language. By using this we can do Arithmetic operation (Test by keeping true and false)-->

Add val: ${4+5}
Sub val: ${4-5}
Mul val: ${4*5}
Div val: ${4/5}









