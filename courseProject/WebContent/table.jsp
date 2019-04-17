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
		<font size="5" color=#ebf1ed> <h1>Book Table</h1> </font>
	</div>
</div>


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
String x = "taa";
%>

<%-- <TABLE class="table-striped" style="background-color: #F4DC78" align="center" border="0" width="70%"> --%>
<table border="2" align="center" width="70%" id="booktable">

<%-- 
<tr class=sticky-top>
	<th>Cover</th>
	<th>Title</th>
	<th>Author</th>
	<th>ISBN</th>
	<th>Price</th>
</tr>

--%>

<%
while (rs.next() && n<20){
	n++;

%>

	<% 
		if(n%6 ==0){
	%>
	
		<tr></tr>

	<% } %>



		<td id="bookCell" style="padding: 2px"><a href="singleBook.jsp"><img class="resize"  src=./photos/<%=rs.getString(5)%> /> 
		
		<style>
			p{
				padding-top:0; 
				text-align:center; 
				margin-bottom:0;
			}
		</style>
					<p><a href="singleBook.jsp"><font size="4" color="blue"><%=rs.getString(1)%></font></a></p>
					<p><%=rs.getString(2)%></p>
					<p>$<%=rs.getString(4)%></p>
		</td>


	<% 
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
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="shop.jsp">1</a></li>
    <li class="page-item"><a class="page-link" href="shop2.jsp">2</a></li>
    <li class="page-item"><a class="page-link" href="shop3.jsp">3</a></li>
    <li class="page-item">
      <a class="page-link" href="shop2.jsp">Next</a>
    </li>
  </ul>
</nav>
		

</body>
</html>
