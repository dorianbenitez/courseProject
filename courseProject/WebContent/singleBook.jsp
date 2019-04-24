<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN"
"http://www.w3.org/tr/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">



<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>

<br><br>
<p style="text-align:center"> <img class="resizeFinal" id="cover" src="<%=request.getParameter("link")%>" /> <br><br>
<strong>Title:</strong> <%= request.getParameter("title")%><br>
<strong>Author Name:</strong>  <%= request.getParameter("author")%><br>
<strong>Price:</strong> $<%= request.getParameter("price")%><br>
<strong>ISBN:</strong> <%= request.getParameter("ISBN")%><br>
 </p>
 
 	<br><br><p style="text-align:center;"><a id="goBack" class="btn btn-primary" onclick="history.go(-1)" role="button">Go Back</a></p>


</body>
</html>