<!-- Step - 6 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.sst.model.*"%>

<h2 align="center" style="color: green">Employee Details</h2>

<%
//Getting Details from request object and store in list object(ues form tag action value)
List<EmployeeDetails> empDetails = (List<EmployeeDetails>) request.getAttribute("empDetails");
if (empDetails != null && empDetails.size() > 0) {
	int count = 0;
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

<!-- This center tag is used to keep link at center -->
<center><a href="JavaScript:printValue()">print</a></center>
<!-- By using following scripting tag we can print the table value or can store as pdf format -->
<script language="JavaScript">/* Mention language to avoid possible error */
	function printValue(){
		frames.focus(); //Optional line
		frames.print(); //frames and print() are predefine
	}
</script>
<!-- Now go to excel_sheet page -->