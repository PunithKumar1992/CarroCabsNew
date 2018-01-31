<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.appfone.carro.Daoimpl.Vehicle_listDaoimpl" %>
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
<%! int count=0; 
String[] v_image;
String[] v_name;
String[] km_perday;
String[] price_km;
String[] driverbata;
String drbata;
String drbata1;
String drbata2;
String img;
String imgpath;

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

<div class="preloader_wrapper" >
	<div id="pre_loader">
		<img src="images/loader.gif" alt="">
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
<li class="active" style="color: white;">CAR List</li>
</ul>
</div>
</div>
<div class="animate-bus">
<img src="images/animate-bus2.png" alt="">
</div>
</div>


<div class="cp-heading-style1">
<h2><br>Choose  <span> CAR</span></h4>
</div>
<% 
Vehicle_listDaoimpl v_list= new Vehicle_listDaoimpl();
count=v_list.getcountlist();
v_image=new String[count];
v_image=v_list.getv_imagelist();

v_name=new String[count];
v_name=v_list.getVehiclenameslist();

km_perday=new String[count];
km_perday=v_list.getkm_per_daylist();

price_km=new String[count];
price_km=v_list.getprice_kmlist();

driverbata=new String[count];
driverbata=v_list.getdriverbatalist();


for(int i=0;i<count;i++)
{
img=v_image[i];
imgpath="images/vehicleimages/"+img;
drbata=driverbata[i];
drbata1=drbata.substring(0,6);
drbata2=drbata.substring(6);
out.println("<div class='col-md-3' style='margin-top:5%'>");
out.println("<form action='Contactinfo.html' method='post'>");
out.println("<article class='cp-taxi-holder' style='height: 443px;'>");
out.println("<figure class='cp-thumb'>");
out.println("<img src='"+imgpath+"' alt='car image' >");
out.println("</figure>");
out.println("<div class='cp-text'>");
out.println("<h4 name='car' value='"+v_name[i]+"  style='color:#bf3738'>"+v_name[i]+"<br></h4>");
out.println("<ul class='cp-meta-listed'>");
out.println("<li>Per DAy: <span>"+km_perday[i]+"</span></li>");
out.println("<li>Price: <strong>"+price_km[i]+"</strong></li>");
out.println("<li>Driver Bata: <strong>"+drbata1+"<br>"+drbata2+" </strong></li>");

out.println("</ul>");
out.println("<input type='hidden' value='"+v_name[i]+"' name='car'>");
out.println("<input type='hidden' value='"+km_perday[i]+"' name='perday'>");
out.println("<input type='hidden' value='"+price_km[i]+"' name='price'>");
out.println("<input type='hidden' value='"+driverbata[i]+"' name='driverbata'>");
out.println("<input type='hidden' value='"+v_image[i]+"' name='vimage'>");



out.println("<input type='submit' value='select' class='cp-btn-style1' style='margin-top: -6%;margin-left: 23%; background-color:#f4a111; font-size: 20px; border-radius: 10px;' >");
out.println("</form>");

out.println("</div>");
out.println("</article>");
out.println("</div>");
}

%>
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

<script language="javascript" type="text/javascript">
     $(window).load(function() {
     /* $('.preloader_wrapper').hide();
  */
  $('.preloader_wrapper').delay(600).fadeOut("slow"); 
   });
</script>
</body>
</html>