<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<b>Now we are setting value in bean object variable by using JSP</b>
<jsp:useBean id="tchr" class="sst.com.beans.Teachers" scope="application" /><!-- This is to call/map with bean class -->
<!-- Setting values in bean object variables -->
<jsp:setProperty name="tchr" property="tcId" value="101"/>
<jsp:setProperty name="tchr" property="tcName" value="Kumar"/>
<jsp:setProperty name="tchr" property="tcAge" value="28"/>
<jsp:setProperty name="tchr" property="tcSalary" value="25000f"/>
<br><b>All value set to Teacher bean object</b>

<!-- http://localhost:8080/bean_property_use/set_value.jsp -->
