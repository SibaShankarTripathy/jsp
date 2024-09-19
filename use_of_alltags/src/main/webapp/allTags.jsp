<h2>Use of ScriptletTag</h2>
<h5>All implicit object and all code under ScriptletTag goes to
	_jspService(-,-)</h5>
<%
out.println("Current Date and Time" + new java.util.Date());
out.println("All bellow implicit objects are local variable to _jspService method");
out.println(",==request: " + request.getClass());
out.println(",==response: " + response.getClass());
out.println(",==session: " + session.getClass());
out.println(",==page: " + page.getClass());
out.println(",==pageContext: " + pageContext.getClass());
out.println(",==out: " + out.getClass());
out.println(",==config: " + config.getClass());
out.println(",==application: " + application.getClass());
out.println(",==BrowserName: " + request.getHeader("user-agent"));
out.write("Null value: " + null);
out.write("Int value: " + 15);
%>
<br>
OR
<br>
<jsp:scriptlet>out.println("Current Date and Time" + new java.util.Date());
out.println("All bellow implicit objects are local variable to _jspService method");
out.println(",==request: " + request.getClass());
out.println(",==response: " + response.getClass());
out.println(",==session: " + session.getClass());
out.println(",==page: " + page.getClass());
out.println(",==pageContext: " + pageContext.getClass());
out.println(",==out: " + out.getClass());
out.println(",==config: " + config.getClass());
out.println(",==application: " + application.getClass());
out.println(",==BrowserName: " + request.getHeader("user-agent"));
out.write("Null value: " + null);
out.write("Int value: " + 15);</jsp:scriptlet>
<%-- This is script let tag comment --%>


<h2>Use of Expression Tag</h2>
String Value:
<%="This is expression tag message and it allow only one expression at a time"%><br>
Premitative dataType:
<%=10 + " " + 1234567890 + " " + 10.2 + " " + 10.12345678912345678 + " " + 'c'%>
Expression Tag is used to print something on browser....

<h4>Combination of Expression Tag and ScriptletTag</h4>
<%
int a = 10;
int b = 20;
%>
value of a:
<%=a%><br>
value of b:
<%=b%><br>
sum of a and b:
<%=a + b%><br>
is 'a' big number:
<%=a > b%><br>
----------------------------------
<%
String str = "Hello";
String str1 = " World";
%><br>
OR
<br>
<jsp:expression>str + str1</jsp:expression><br>
<jsp:expression>new java.util.Date()</jsp:expression><br>
We cannot keep void return type method in Expression Tag
<%=new java.util.Date()%><br>
Message:
<%=str + str1%>


<h2>Use of Declarative Tag</h2>
Declarative Tag mainly used for instance variable, constructor, instance
methods
<%!//Instance variable as normal java class
	int num = 10;
	String val = "Hello World";

	//Instance method as normal java class
	public String message(String str1, String str2) {
		System.out.println(num + " " + val);
		return str1 + str2;
	}

	static int method() {
		System.out.println(" Static Method ");
		return 10;
	}

	public void jspDestory() {
		System.out.print("This is Destory method...");
	}%>
<br>
Calling static and instance method in scriptlet tag
<!-- No need to create object ref to call instance method -->
<%
int res = method();
String res1 = message("hiii", "Siba");
%>
<!-- bellow line to show output of above line -->
static() output
<%=res%><br>
instance() output
<%=res1%>
<br>
Calling static and instance method in expression tag
<br>
Static method output:
<%=method()%><br>
Instance method output:
<%=message("Siba", "Shankar")%>
<!-- path to get .jsp file -->
<!-- H:\jsp\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\use_of_alltags\org\apache\jsp -->
<br>
--------------------------------------------------------------------------------------------
<br>
we cannot access implicit obj ref in declarative tag tag directly which
given by container.
<br>
But we can access the object value by using our creating referance
variable as shown bellow
<br>

<%!// ServletConfig srlvtCnfg = getServletConfig(); cannot keep here giving null value
	// ServletContext srlvtCntxt = getServletContext(); cannot keep here giving null value

	public void jspInit() {
		System.out.print("This is init method");
		ServletConfig srlvtCnfg = getServletConfig();
		ServletContext srlvtCntxt = getServletContext();
		System.out.println(
				"ServletConfig class name: " + srlvtCnfg.getClass() + ", Hashcode value: " + srlvtCnfg.hashCode());
		System.out.println(
				"ServletContext class name: " + srlvtCntxt.getClass() + ", Hashcode value: " + srlvtCntxt.hashCode());
	}%><br>
<!-- Now compare above and bellow hashCode value -->
ServletConfig class name from implicit object reference:
<%=config.getClass()%><br>
ServletConfig HashCode name from implicit object reference:
<%=config.hashCode()%><br>
ServletContext class name from implicit object reference:
<%=application.getClass()%><br>
ServletContext HashCode name from implicit object reference:
<%=application.hashCode()%>















