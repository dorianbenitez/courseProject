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
	<title>Checkout</title>
</head>


<body>

<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
	<div class="text-center">
		<font size="5" color=#ebf1ed> <h1>Checkout</h1> </font>
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
String QueryString = "SELECT * FROM cart";
rs = statement.executeQuery(QueryString);
int n=0;
%>





<div class="d-flex justify-content-around">

<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Cover</th>
      <th scope="col">Title</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col"></th>
    </tr>
  </thead>
  
 





<%
while (rs.next() && n<20){
	n++;

%>

	<% 
		if(n%6 ==0){
	%>
	
		<tr></tr>

	<% } %>

<tbody>
    <tr>
      <th scope="row"><%= n %></th>
      <td><img class="checkout-resize" id="link" src=./photos/<%=rs.getString(3)%> /></td>
      <td><%=rs.getString(2)%></td>
      <td>Author</td>
      <td><p><%=rs.getString(1)%></p></td>
      <td><font color="red">Remove</font></td>
    </tr>
    </tbody>

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

</table>
</div>

<br>

<p style="text-align: center">Total Price: </p>


</font>	

</body>
</html>
