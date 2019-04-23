<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN"
"http://www.w3.org/tr/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 


<html>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">


<head>
	<title>display data from the table using jsp</title>
</head>


<body>

<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
	<div class="text-center">
		<font size="5" color=#ebf1ed> <h1>Shop All Books</h1> </font>
	</div>
</div>

		<%-- <div class="nav-bar">  --%>
		<nav class="navbar sticky-top navbar-light bg-dark">
		<ul class="nav">
			<li><a class="navbar-brand" href="login.jsp">Home</a></li>
			<li><a class="navbar-brand" href ="register.jsp">Account Registration</a>
		</ul>
		</nav><br>

<%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://127.0.0.1:3306/coursedatabase";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "Chump4870");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * FROM books";
rs = statement.executeQuery(QueryString);
int n=0;
%>


<table border="2" align="center" width="80%" id="booktable">


<%
while (rs.next()){
	

%>

<% if(n>=20 && n<40){ %>
	<% 
		
		if(n%5 ==0){
	%>
	
		<tr></tr>

	<% } %>



		<%-- string(1,2,3,4,5) = title, author, isbn, price, cover --%>
		
<td style="padding:20px; text-align:center; width:17%; position: relative; border: solid 1px;">
			<p style="text-align:center"> <img class="resize" id="cover" src="<%=rs.getString(5)%>" /> </p>
		
		<style>
			p{
				padding-top:0; 
				text-align:center; 
				margin-bottom:0;
			}
		</style>
		<% 
		String t=rs.getString(1);
		String a=rs.getString(2);
		String i=rs.getString(3);
		String p=rs.getString(4);
		String c=rs.getString(5);
		
		%>
		
					<p name="title" id="title"><font size="4" color="blue"><%=t%></font></p>
					<p name="author" id="author"><%=rs.getString(2)%></p>
					<p name="price" id="price">$<%=p%></p>
		</td>
<% } %>

	<% 
	n++;
		} 
	%>
	

<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} 
catch (Exception ex) {
%>

<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE>


</font>

<br><br>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center position-sticky">
    <li class="page-item">
      <a class="page-link" href="browse.jsp">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="browse.jsp">1</a></li>
    <li class="page-item disabled"><a class="page-link" href="browse2.jsp">2</a></li>
    <li class="page-item"><a class="page-link" href="browse3.jsp">3</a></li>
    <li class="page-item">
      <a class="page-link" href="browse3.jsp">Next</a>
    </li>
  </ul>
</nav>
		

</body>
</html>