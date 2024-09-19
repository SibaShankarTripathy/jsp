<!-- Step - 7 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.sst.model.*"%>

<h2 align="center" style="color: green">Employee Details</h2>

<%
List<EmployeeDetails> empDetails = (List<EmployeeDetails>) request.getAttribute("empDetails");
if (empDetails != null && empDetails.size() > 0) {
	int count = 0;
	
	//These bellow two line only responsible to create an excel sheet attachment
	//Here we are setting the response data set as excel format
	response.setContentType("application/ms-excel");
	//Here we are creating that excel format data as attachment(employeeDetails.xls - any name can give) not to only show in browser
	response.addHeader("Content-Disposition", "attachment;filename=employeeDetails.xls");
%>

<table style="color: blue; text-align: center" bgcolor="cyan" border=1 align="center">
	<tr>
		<th>SlNo</th>
		<th>EmpId</th>
		<th>EmpName</th>
		<th>EmpJob</th>
		<th>EmpMGR</th>
		<th>EmpHireDate</th>
		<th>EmpSalary</th>
		<th>EmpCommission</th>
		<th>EmpDepertment</th>
	</tr>
	<%
	for (EmployeeDetails det : empDetails) {
		count++;
	%>
	<tr>
		<td><%=count%></td>
		<td><%=det.getEmpno()%></td>
		<td><%=det.getEname()%></td>
		<td><%=det.getJob()%></td>
		<td><%=det.getMgr()%></td>
		<td><%=det.getHiredate()%></td>
		<td><%=det.getSal()%></td>
		<td><%=det.getComm()%></td>
		<td><%=det.getDeptno()%></td>
	</tr>
	<%
	}
	%>
</table><br>

<%
} else {
%>
<h2 style="color: red" align="center">No data found</h2>
<%
}
%>
