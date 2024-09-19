<!-- Step - 3 -->
<%@ page import="java.sql.*"%><!-- importing sql package for sql operaton -->
<%!
	//Part-1 Decleration of Variable
	Connection con=null;
	PreparedStatement psInsert = null;
	PreparedStatement psRetrieve = null;
	String INSERT_QUERY = "INSERT INTO HTML_JSP_DB VALUES(?,?,?,?)";
	String SELECT_QUERY = "SELECT SID,SNAME,SAGE,SEMAIL FROM HTML_JSP_DB";
	
	public void jspInit(){
		//When we are getting values from web.xml file mapping like bellow shown otherwise direct can keep value in bellow try-catch block
		ServletConfig srvltCnfg = getServletConfig();
		String driver = srvltCnfg.getInitParameter("dbDriver");
		String url = srvltCnfg.getInitParameter("dbUrl");
		String uName = srvltCnfg.getInitParameter("dbUserName");
		String password = srvltCnfg.getInitParameter("dbPassword");
		
		try{
			//Part-2 Establishing DB Connection
			Class.forName(driver);
			con = DriverManager.getConnection(url,uName,password);
			//Compiling Insert query
			psInsert = con.prepareStatement(INSERT_QUERY);
			//Compiling Select query
			psRetrieve = con.prepareStatement(SELECT_QUERY);
		}
		catch(Exception e){
		//<p style="color:red; text-align: center">DB Connection NOT Established</p>
			 e.printStackTrace();
		}
	}
%>
<%
try{
	//Part-3 getting value from view screen
	String val = request.getParameter("submitButton");
	if(val.equalsIgnoreCase("Save")){
		String name = request.getParameter("sname");
		int id = Integer.parseInt(request.getParameter("sid"));
		int age = Integer.parseInt(request.getParameter("sage"));
		String mail = request.getParameter("smail");
		//Part - 4 inserting value in db
		psInsert.setInt(1, id);
		psInsert.setString(2, name);
		psInsert.setInt(3,age);
		psInsert.setString(4,mail);
		int res = psInsert.executeUpdate();
		if(res>0){ %>
<p style="color:Green; text-align: center">Record Inserted Successfully</p>
<% } else { %>
<p style="color:red; text-align: center">Record NOT Inserted Successfully</p>
<% } 
		} else {
		//Part - 5 Retrieving value from DB
		ResultSet rs = psRetrieve.executeQuery(); %>
<table border="1" bgcolor="yellow" text-align="center">
	<tr>
		<th>Student ID</th>
		<th>Student Name</th>
		<th>Student Age</th>
		<th>Student Mail</th>
	</tr>
	<% while(rs.next()){ %>
	<tr>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getInt(3) %></td>
		<td><%=rs.getString(4) %></td>
	</tr>
	<% } //while%>
</table>
 <% } //else %>
	<br><button style="color:blue; text-align: center"><a href="student_details.html">Home</a></button>
<% } catch(Exception e){%>
<p style="color:red; text-align: center">All Value must be enter</p>
<%	e.printStackTrace();
} %>

<%!
//Part - 6 Close all open resources
	public void jspDestory(){
	
	try{
		if(psInsert!=null) psInsert.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	try{
		if(psRetrieve!=null) psRetrieve.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	try{
		if(con!=null) con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
}
%>
