<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.appfone.carro.Daoimpl.Package_vehiclelistDaoimpl"%>
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
   
</head>
<body>
<%!
 String pack_vehiclename[];
String pack_vehicleprice[];
String pack_vehicleimage[];
String packselected;
String img;
String imgpath;
%>
<header class="cp_header" style="margin-top: -7%;">
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
<li><a href="packages.html">Packages</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="testimonial.html">Testimonial</a></li>
<li><a href="faq.html">FAQs</a>
</li>
</ul>
</li>
<li><a href="contact-us.html">Contact Us
</a>
</li>
</ul>
</div>

<div class="preloader_wrapper" >
	<div id="pre_loader">
		<img src="images/loader.gif" alt="">
	</div>
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
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu" role="menu">
<li><a href="testimonial.html">Testimonial</a></li>
<li><a href="faq.html">FAQs</a>
</li>
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
<div class="cp_inner-banner" style="margin-top: -8%;">
<img src="images/banner/inner-banner-img-08.png" alt="">

<div class="cp-inner-banner-holder">
<div class="container">

<ul class="breadcrumb">
<li><a href="index.jsp">Home</a></li>
<li><a href="packages.jsp">Packages</a></li>
<li><a href="package_info1.jsp">Package Info</a></li>
<li class="active" style="color: white;">Package Car List</li>
</ul>
</div>
</div>
<div class="animate-bus">
<img src="images/animate-bus2.png" alt="">
</div>
</div>

<section style="margin-top:8% ">
<h2 style="margin-left: 36%;margin-bottom:5%;">Package Car List</h2>
<div class="col-md-12" >
<% 
packselected=session.getAttribute("packselected").toString();
Package_vehiclelistDaoimpl pv_list= new Package_vehiclelistDaoimpl();
pack_vehiclename=pv_list.getPack_vehiclename(packselected);
pack_vehicleprice=pv_list.getPack_vehicleprice(packselected);
pack_vehicleimage=pv_list.getPack_vehicleimage(packselected);
for(int i=0;i<pack_vehiclename.length;i++)
{
	img=pack_vehicleimage[i];
	imgpath="images/vehicleimages/"+img;
out.println("<div class='col-md-3'>");
out.println("<form action='packagecontact_info.html' method='post'>");
out.println("<article class='cp-taxi-holder'>");
out.println("<figure class='cp-thumb'>");
out.println("<img src='"+imgpath+"' alt=''>");
out.println("</figure>");
out.println("<div class='cp-text'>");
out.println("<h4 style='color:#bf3738'>"+pack_vehiclename[i]+"</h4>");
out.println("<p> price:"+pack_vehicleprice[i]+"</p>");
out.println("<input type='hidden' name='package_vehiclename' value='"+pack_vehiclename[i]+"'>");
out.println("<input type='hidden' name='package_vehicleprice' value='"+pack_vehicleprice[i]+"'>"); 
out.println("<input type='hidden' name='package_vehicleimage' value='"+pack_vehicleimage[i]+"'>"); 
out.println("<input type='submit' value='select' class='cp-btn-style1'>");

out.println("</div>");

out.println("</article>");
out.println("</form>");
out.println("</div>");
}
%>





</div>
<script>
$("marquee").hover(function () { 
    this.stop();
}, function () {
    this.start();
});</script>
</section>
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


<script language="javascript" type="text/javascript">
     $(window).load(function() {
     /* $('.preloader_wrapper').hide();
  */
  $('.preloader_wrapper').delay(600).fadeOut("slow"); 
   });
</script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/jquery.scrollTo.js"></script>

</body>


</html>