<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="title" content="Carro cabs">
<meta name="description" content="carro cabs for outstation and trip packages and airport pick up and drop.">
<meta name="keywords" content="carro, bangalore cabs, bangalore airpost cabs, bangalore to outstation cabs , taxi services , india taxi service , outstation taxi, local taxi services,  local cabs, 560001 to 560100 bangalore services , kempegowda international airport cabs services, bangalore airport cabs services ,  Kial cabs services, mysore cabs trip packages, trip packages , madikeri trip packages , coorg trip packages , kerala trip planner packages  carto cabs , charriot partner ,">
<meta name="robots" content="index, follow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<meta name="revisit-after" content="5 days">
<meta name="author" content="Renuka prasad">
<link rel="icon" href="images/final_logo.ico" type="image/x-icon">
<link rel="stylesheet" href="css/custom.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/theme-color.css" type="text/css">
<link rel="stylesheet" href="css/responsive.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/icomoon.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Exo+2:400,300,600,700,900,800,200,100,500,400italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
 <link rel="stylesheet" href="css/pikaday.css">
    <link rel="stylesheet" href="css/site.css">
    
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyBS18tx1fKZDmGkHjsyQoXm2cYbH5xI88M&sensor=false&libraries=places" type="text/javascript">
</script>   
</head>
<body>
<%! String carimg;
String car;
String days;
String price;
String  perday;
String driverbata;
String distance;
String way;
String sdistance=null;
double idays;
double iprice;
double iperday;
double idriverbata;
double idistance;
double basicamt;
double gst;
double grandtotal;

 %>
<header class="cp_header">
<div id="cp-slide-menu" class="cp_side-navigation">
<ul class="navbar-nav">
<li id="close"><a href="#"><i class="fa fa-close"></i></a></li>
<li><a href="index.jsp">Home</a></li>
<li><a href="about.html">About</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Services <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="outstation.html">Out Station</a></li>
<li><a href="onedaypackage.html">One Day Packages</a></li>
<li><a href="packagetour.html">Package Tours</a></li>
<li><a href="corporate.html">Corporate Tours</a></li>
</ul>
</li>
<li><a href=packages.html">Packages</a></li>
<li><a href="faq.html">FAQs</a>
</li>
<!-- <li><a href="booking.html">View a booking</a> -->
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="gallery.html">Gallery</a>
</li>
<li><a href="testimonial.html">Testimonial</a></li>
</ul>
</li>
<li><a href="contact-us.html">Contact Us
</a>
</li>
</ul>
</div>

<div class="cp-navigation-row">
<div class="container">
<div class="row">
<div class="col-md-12">
</div>
</div>
<div class="row" style="background-color:white;">
<div class="col-md-3 col-sm-12 col-xs-6" >

<strong class="cp-logo">
<a href="index.jsp"><img src="images/cp-logo.png" alt=""></a>
</strong>
</div>
<div class="col-md-9 col-sm-12 col-xs-6">

<div class="cp-nav-holder">
<ul class="navbar-nav">
<li><a href="index.jsp">Home</a></li>
<li><a href="about.html">About</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Services <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="outstation.html">Out Station</a></li>
<li><a href="onedaypackage.html">One Day Packages</a></li>
<li><a href="packagetour.html">Package Tours</a></li>
<li><a href="corporate.html">Corporate Tours</a></li>
</ul>
</li>
<li><a href="packages.html">Packages</a></li>
<li><a href="faq.html">FAQs</a>
</li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="gallery.html">Gallery</a>
</li>
<li><a href="testimonial.html">Testimonial</a></li>
</ul>
</li>
<li><a href="contact-us.html">Contact Us</a>
</li>
</ul>
<ul class="nav-right-listed">
<li id="search-push"><i class="fa fa-search"></i></li>
<li id="push" class="cp-sidemenu"><a href="#"><i class="fa fa-align-justify"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</header>
<div class="cp_inner-banner">
<img src="images/banner/inner-banner-img-02.png" alt="">

<div class="cp-inner-banner-holder">
<div class="container">

<ul class="breadcrumb">
<li><a href="index.jsp">Home</a></li>
<li><a href="CarList.html">CAR List</a></li>
</ul>
</div>
</div>
<div class="animate-bus">
<img src="images/animate-bus2.png" alt="">
</div>
</div>

<div>
<div class="cp-heading-style1">
<h2><br>Contact<span>Information</span></h4>
</div>

<div class="col-md-6" style="margin-top:5%">
<article class="cp-taxi-holder">

<div class="cp-reservation-box" style="width:100%;height:85%">
<div class="cp-text">
<form action="Booking.html" method="post">
<div class="inner-holder">

<input type="text" placeholder="Full Name" name="fullname" required pattern="[a-zA-Z ]+">
</div>
<div class="inner-holder">

<input type="text" placeholder="Phone Number" name="phone" required pattern="[789][0-9]{9}">
</div>
<div class="inner-holder">

<input type="text" placeholder="Email" name="email" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$">
</div>
<div class="inner-holder">

<textarea row="15" col="15" placeholder="address" name="address" required style="resize:none;"></textarea>

<input type="submit" value="Submit">
</div>
</form>
</div>
</div>
</article>
</div>
<%
carimg=session.getAttribute("vimage").toString();
car=session.getAttribute("car").toString();
way=session.getAttribute("way").toString();
days=session.getAttribute("day").toString();
price=session.getAttribute("price").toString();
perday=session.getAttribute("perday").toString();
driverbata=session.getAttribute("driverbata").toString();
distance=session.getAttribute("distance").toString();

int i=distance.length();
switch(i)
{
case 4:
	sdistance=distance.substring(0,1);
	break;
case 5:
	sdistance=distance.substring(0,2);
	break;
case 6:
	sdistance=distance.substring(0,3);
	break;
case 8:
	distance=distance.replace(",","");
	sdistance=distance.substring(0,4);
	break;
case 9:
	distance=distance.replace(",","");
	sdistance=distance.substring(0,5);
	break;
default:break;
}




days=days.substring(0,1);
idays=Double.parseDouble(days);
iprice=Double.valueOf(price.substring(0,3));
iperday =Double.valueOf(perday.substring(0, 3));
idriverbata=Double.valueOf(driverbata.substring(0, 3));
idistance=Double.parseDouble(sdistance);
System.out.println("way is " +way);
System.out.println("idays is " +idays);
System.out.println("iprice is " +iprice);
System.out.println("iperday is " +iperday);
System.out.println("idriverbata is " +idriverbata);
System.out.println("idistance is " +idistance);

if(way.equals("Round Trip"))
{

idistance=idistance*2;


}

if(way.equals("One Way"))
{
if(idistance>iperday)
{

		basicamt=idistance*iprice;
		Math.round(basicamt);
		idriverbata=idriverbata*idays;
		Math.round(idriverbata);
		gst=((basicamt+idriverbata)*0.05);
		Math.round(gst);
		grandtotal=(basicamt+idriverbata+gst);
		Math.round(grandtotal);

}
else if(idistance<iperday)
{
	basicamt=iperday*iprice;
	Math.round(basicamt);
	idriverbata=idriverbata*idays;
	Math.round(idriverbata);
	gst=((basicamt+idriverbata)*0.05);
	Math.round(gst);
	grandtotal=(basicamt+idriverbata+gst);
	Math.round(grandtotal);
}

}
else if(way.equals("Round Trip"))
{
	basicamt=iperday*iprice*idays;
	Math.round(basicamt);
	idriverbata=idriverbata*idays;
	Math.round(idriverbata);
	gst=((basicamt+idriverbata)*0.05);
	Math.round(gst);
	grandtotal=(basicamt+idriverbata+gst);
  	Math.round(grandtotal);
}


out.println("<form action='CarListl.html' method='post'");
out.println("<div class='col-md-3' style='margin-top:5%'>");
out.println("<article class='cp-taxi-holder' style='height: 443px;'>");
out.println("<figure class='cp-thumb'>");
out.println("<img src='images/vehicleimages/"+carimg +"' alt=''>");
out.println("</figure>");
out.println("<div class='cp-text'>");
out.println("<h4 style='color:#bf3738'>"+car+"</h4>");
out.println("<ul class='cp-meta-listed'>");
out.println("<li>Base Price: <span> "+basicamt+"</span></li>");
out.println("<li>Driver Bata: <strong>"+idriverbata+"</strong></li>");
out.println("<li>Gst: <strong>"+gst+"</strong></li>");
out.println("<li>Total approx: <strong>"+grandtotal+" </strong></li>");
out.println("<input type='submit' value='Change Car'>");
out.println("</ul>");
out.println("</div>");
out.println("</article>");
out.println("</div>");
%>






</div>
</div>

<footer class="cp_footer">

<section class="cp-ft-top-section pd-t80">
<div class="container">
<div class="row">
<div class="col-md-6 col-sm-12">
<div class="footer-about-box">
<strong class="logo">
<a href="index.jsp"><img src="images/cp-logo.png" alt=""></a>
</strong>
<p>CARRO is knowing and fullfilling all the moving needs of their clients.We have been professional service since many years ,and we have developed one services in a waay that cater to both implicit and explicit needs of our clients.</p>
<ul class="cp-social-links">
<li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</section>

<section class="cp-ft-bottom-section">
<div class="container">
<div class="row">
<div class="col-md-5 col-sm-12">

<div class="cp-ft-form-box">
<p style="color: white;margin-bottom: 2%">Contact Us</p>
<p style="color: white;margin-bottom: 2%"><i class="fa fa-phone-square" aria-hidden="true"></i>+91 73537 23333</p>
<p style="color: white;margin-bottom: 2%"><i class="fa fa-address-book" aria-hidden="true"></i>18/9 Sir M Vishweshwaraiah Layout 8th Block Muddanapalya Bangalore ,India.</p>
</div>
</div>
<div class="col-md-7 col-sm-12">

<nav class="cp-footer-nav">
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href="about.html">About Us</a></li>
<li><a href="service.html">Services</a></li>
<li><a href="packages.html">Packages</a></li>
<li><a href="faq.html">FAQs</a></li>
<li><a href="contact-us.html">Contact Us</a></li>
</ul>
</nav>
<p style="color:white;"> All Rights Reserved 2018 </p>
</div>
</div>
</div>
</section>
</footer>
</div>

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script src="js/html5shiv.js" type="text/javascript"></script>

<script type="text/javascript" src="js/migrate.js"></script>

<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<script type="text/javascript" src="js/custom-script.js"></script>
</body>
</html>