<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Welcome Page</title>
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
			<font size="5" color=#ebf1ed> <h1> ${message} Welcome </h1> </font>
		</div>
	</div>


		<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="table.jsp">Shop Books</a></li>
				<li><a class="navbar-brand" href="logout.jsp"> Logout</a></li>
			</ul>
		</nav>	<br>
	
		
		
		<table>
		<tr><th>Award Winning Books</th></tr>
			<tr>
				<td><a href="browse3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81h2gWPTYJL.jpg"></a></td>
				<td><a href="browse3.jsp"><img class="resize" src="https://r.wheelers.co/bk/large/978055/9780552565974.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81WojUxbbFL.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://prodimage.images-bn.com/pimages/9780062797155_p0_v4_s550x406.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51GWPea6icL._SX329_BO1,204,203,200_.jpg"></a></td>
			</tr>
			
			<tr><th>Best Selling Fiction</th></tr>
			<tr>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81WWiiLgEyL.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51aw-U92Y2L._SX320_BO1,204,203,200_.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/91xI4GjM7jL.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51rTUYqI7cL._SX339_BO1,204,203,200_.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51xnnD8DqTL.jpg"></a></td>
			</tr>
		
		<tr><th>Best Selling Non-Fiction</th></tr>
			<tr>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/71k-Dje-W-L.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81tN8IGERxL.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51EobVielcL._SX331_BO1,204,203,200_.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51ZoMO5mJaL._SX351_BO1,204,203,200_.jpg"></a></td>
				<td><a href="browse3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/41xgrVdf4ML._SX332_BO1,204,203,200_.jpg"></a></td>
			</tr>
			
			
			<tr><th>Best Selling Romance</th></tr>
			<tr>
				<td><a href="browse3.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0425241173/LC.GIF&client=springshare"></a></td>
				<td><a href="browse3.jsp"><img class="resize" src="http://images.amazon.com/images/P/1931520062.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=9781618220301/LC.GIF&client=springshare"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0525940103/LC.GIF&client=springshare"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0451209451/LC.GIF&client=springshare"></a></td>
			</tr>
			
			<tr><th>Best Selling Sports</th></tr>
			<tr>
				<td><a href="browse3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/517Ug5LZZFL._SX327_BO1,204,203,200_.jpg"></a></td>
				<td><a href="browse3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/A1z7ywkr2wL.jpg"></a></td>
				<td><a href="browse.jsp"><img class="resize" src="http://prodimage.images-bn.com/pimages/9781491490242_p0_v1_s1200x630.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://prodimage.images-bn.com/pimages/9781429680042_p0_v1_s550x406.jpg"></a></td>
				<td><a href="browse2.jsp"><img class="resize" src="https://prodimage.images-bn.com/pimages/9781476551883_p0_v1_s550x406.jpg"></a></td>
			</tr>
		</table><br><br>

</body>
</div>
</html>