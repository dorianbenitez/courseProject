<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


</head>

<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Payment Information</title>
</head>


<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">

<div id="container">

	<body>
	<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
		<div class="text-center">
			<font size="5" color=#ebf1ed> <h1>Payment Information</h1> </font>
		</div>
	</div>
		
		<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="checkout.jsp">Back</a></li>
				<li><a class="navbar-brand" href="table.jsp"> Continue Shopping</a></li>
				<li><a class="navbar-brand" href="logout.jsp"> Logout</a></li>
			</ul>
		</nav>	
		
		
		
		<div class="table-responsive">
		
		<table border = "0">
	
	
 	 	<tr align="left" valign="top">
 	 		<th>Payment method: </th>
 	 			<td><select>
  					<option value="volvo">Visa</option>
  					<option value="saab">Mastercard</option>
  					<option value="mercedes">Discover</option>
  					<option value="audi">American Express</option>
				</select></td>
		</tr>
<br><br>


	 
	 		<tr align="left" valign="top">
	   			<td>Name On Card: </td>
 		 		<td><input type="text" name ="lastName"/></td>
 	 		</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>Card Number:</td>
 				 <td><input type="text" name ="username"/></td>
 			</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>Expiration Date:</td>
 		 		<td><input type="text" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>CVV: </td>
	   			<td><input type="password" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	 		<tr align="left" valign="top">
	   			<th>Billing Address</th>
 	 		</tr>
 	 
 	   		<tr align="left" valign="top">
	   			<td>E-mail: </td>
	   			<td><input type="text" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  	   <tr align="left" valign="top">
	   			<td>Phone Number: </td>
	   			<td><input type="text" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>City:</td>
	   	<td><input type="text" name ="password" id="password"/></td>
 	 </tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>State:</td>
	   	<td>	<select>
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select></td>
 	 </tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>Zip Code:</td>
	   	<td><input type="text" name ="password" id="password"/></td>
 	 </tr>


	<tr align="left" valign="top">
		<form action="CheckoutController" method="post" >
      		<td style="text-align:center">
					<input class="btn-primary" type="submit" name="Add to cart" value="Submit" /></td>
			</td>
		</form>
  	</tr>
	
	</table>
	</div>
	
	
	
	
		
  

</body>
</html>