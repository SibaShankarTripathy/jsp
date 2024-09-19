<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sst.com.beans.*"%>
<br><b>This JSP page collect/get value from Teacher bean Object</b><br>
<!-- Declare bean object of Teachers  -->
<jsp:useBean id="tchr" class="sst.com.beans.Teachers" scope="application"/>
<!-- Getting vale from bean object -->
<b>Teacher ID: </b><jsp:getProperty property="tcId" name="tchr"/><br>
<b>Teacher Name: </b><jsp:getProperty property="tcName" name="tchr"/><br>
<b>Teacher Age: </b><jsp:getProperty property="tcAge" name="tchr"/><br>
<b>Teacher Salary: </b><jsp:getProperty property="tcSalary" name="tchr"/><br>

<!-- This above value will display only when we need to execute set_value.jsp then only it will show-->
<!-- http://localhost:8080/bean_property_use/get_value.jsp -->