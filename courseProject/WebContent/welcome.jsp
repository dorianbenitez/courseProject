<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Welcome Page</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 600px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 7s;
  animation-name: fade;
  animation-duration: 7s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

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
				<li id="shop"><a class="navbar-brand" href="table.jsp">Shop Books</a></li>
								<li><a class="navbar-brand" href="checkout.jsp">Checkout</a></li>
				<li><a id="cLogout" class="navbar-brand" href="logout.jsp"> Logout</a></li>
			</ul>
		</nav>	<br>
	
		
		<strong><u><font face = "Bebas Neue" size="5"><p style="text-align:center;">Award Winning Books</p></font></u></strong>
		
<div class="slideshow-container" style="background-color:grey;" width="100%">

<div class="mySlides fade">
  <p style="text-align:center;"><img src="https://images-na.ssl-images-amazon.com/images/I/81h2gWPTYJL.jpg" style="width:300px; height:400px;"></p>
</div>

<div class="mySlides fade">
 <%-- <div class="numbertext">2 / 4</div>   --%>
  <p style="text-align:center;"><img src="https://r.wheelers.co/bk/large/978055/9780552565974.jpg" style="width:300px; height:400px;"></p>
</div>

<div class="mySlides fade">
 <p style="text-align:center;"><img src="https://images-na.ssl-images-amazon.com/images/I/81WojUxbbFL.jpg" style="width:300px; height:400px;"></p>
</div>

<div class="mySlides fade">
 <p style="text-align:center;"><img src="https://prodimage.images-bn.com/pimages/9780062797155_p0_v4_s550x406.jpg" style="width:300px; height:400px;"></p>
</div>

<div class="mySlides fade">
 <p style="text-align:center;"><img src="https://images-na.ssl-images-amazon.com/images/I/51GWPea6icL._SX329_BO1,204,203,200_.jpg" style="width:300px; height:400px;"></p>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
    <span class="dot"></span> 
        <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 7000); // Change image every 5 seconds
}
</script>
		
		
		
		
		
		
		
		
		<br><table style="padding:2px;" align="center" width="100%">			
			<tr><th>Best Selling Fiction</th></tr>
			<tr>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81WWiiLgEyL.jpg"></a></td>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51aw-U92Y2L._SX320_BO1,204,203,200_.jpg"></a></td>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/91xI4GjM7jL.jpg"></a></td>
				<td width="20%"><a href="table2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51rTUYqI7cL._SX339_BO1,204,203,200_.jpg"></a></td>
				<td width="20%"><a href="table2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51xnnD8DqTL.jpg"></a></td>
			</tr>
		</table><br><br>
		
		
		<table style="padding:2px;" align="center" width="100%">
		<tr><th>Best Selling Non-Fiction</th></tr>
			<tr>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/71k-Dje-W-L.jpg"></a></td>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/81tN8IGERxL.jpg"></a></td>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51EobVielcL._SX331_BO1,204,203,200_.jpg"></a></td>
				<td width="20%"><a href="table2.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/51ZoMO5mJaL._SX351_BO1,204,203,200_.jpg"></a></td>
				<td width="20%"><a href="table3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/41xgrVdf4ML._SX332_BO1,204,203,200_.jpg"></a></td>
			</tr>
			</table><br><br>
			
			<br><table style="padding:2px;" align="center" width="100%">	
			<tr><th>Best Selling Romance</th></tr>
			<tr>
				<td width="20%"><a href="table3.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0425241173/LC.GIF&client=springshare"></a></td>
				<td width="20%"><a href="table3.jsp"><img class="resize" src="http://images.amazon.com/images/P/1931520062.jpg"></a></td>
				<td width="20%"><a href="table.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=9781618220301/LC.GIF&client=springshare"></a></td>
				<td width="20%"><a href="table2.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0525940103/LC.GIF&client=springshare"></a></td>
				<td width="20%"><a href="table2.jsp"><img class="resize" src="https://syndetics.com/index.aspx?isbn=0451209451/LC.GIF&client=springshare"></a></td>
			</tr>
			</table><br><br>
			
			
			<br><table style="padding:2px;" align="center" width="100%">	
			<tr><th>Best Selling Sports</th></tr>
			<tr>
				<td><a href="table3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/517Ug5LZZFL._SX327_BO1,204,203,200_.jpg"></a></td>
				<td><a href="table3.jsp"><img class="resize" src="https://images-na.ssl-images-amazon.com/images/I/A1z7ywkr2wL.jpg"></a></td>
				<td><a href="table.jsp"><img class="resize" src="http://prodimage.images-bn.com/pimages/9781491490242_p0_v1_s1200x630.jpg"></a></td>
				<td><a href="table2.jsp"><img class="resize" src="https://prodimage.images-bn.com/pimages/9781429680042_p0_v1_s550x406.jpg"></a></td>
				<td><a href="table2.jsp"><img class="resize" src="https://prodimage.images-bn.com/pimages/9781476551883_p0_v1_s550x406.jpg"></a></td>
			</tr>
		</table><br><br>

</body>
</div>
</html>