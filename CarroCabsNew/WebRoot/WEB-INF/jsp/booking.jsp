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
<body onload="get_rout()">
<%! 

String  car;
String price;
String perday;
String driverbata;
String source;
String destination;
String distance;
String days;
String basicamt;
String bata;
String gst;
String grandtotal;
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
<h2><br>Booking<span> Information</span></h4>
</div>
<% 
car = session.getAttribute("car").toString();
price=session.getAttribute("price").toString();
perday=session.getAttribute("perday").toString();
driverbata=session.getAttribute("driverbata").toString();
source=session.getAttribute("source").toString();
destination=session.getAttribute("destination").toString();
distance=session.getAttribute("distance").toString();
days=session.getAttribute("day").toString();
basicamt=session.getAttribute("basicamt").toString();
bata=session.getAttribute("driverbata").toString();
gst=session.getAttribute("gst").toString();
grandtotal=session.getAttribute("grandtotal").toString();

out.println("<div class='col-md-6' style='margin-top:5%'>");
out.println("<article class='cp-taxi-holder'>");

out.println("<div class='cp-reservation-box' style='width:100%;height:85%';>");
out.println("<div class='cp-text'>");

out.println("<form action='' method='post'>");
out.println("<div class='inner-holder'>");
out.println("<table class='table' style='margin-top:-4%;margin-left:-41%'>");
out.println("<tr>");
out.println("<th style='border:none;'>Selected Vechile :</th>" );
out.println("<td style='border:none;'>" +car+"</td>");
out.println("</tr>");
out.println("<br>");

out.println("<tr>");
out.println("<th style='border:none;'>Price:</th>" );
out.println("<td style='border:none;'>" +price+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Per Day:</th>" );
out.println("<td style='border:none;'>" +perday+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Driver Bata:</th>" );
out.println("<td style='border:none;'>" +driverbata+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Pickup Point:</th>" );
out.println("<td style='border:none;'>" +source+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th style='border:none;'>Distination Point:</th>" );
out.println("<td style='border:none;'>" +destination+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th style='border:none;'>Distance:</th>" );
out.println("<td style='border:none;'>"+distance +"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Number of Travelling Days:</th>" );
out.println("<td style='border:none;'>" +days+"</td>");
out.println("</tr>"); 

out.println("<tr>");
out.println("<th style='border:none;'>Basic Amount:</th>" );
out.println("<td style='border:none;'>" +basicamt+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Driver Bata:</th>" );
out.println("<td style='border:none;'>" +driverbata+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th style='border:none;'>Gst Amount:</th>" );
out.println("<td style='border:none;'>" +gst+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th style='border:none;'>Toatl <b>Approx.</b> Amount:</th>" );
out.println("<td style='border:none;'>" +grandtotal+"</td>");
out.println("</tr>");
out.println("</table>");
out.println("<input type='hidden' name='source' id='source'  value='" +source+"'/>");
out.println("<input type='hidden' name='destination' id='destination'  value='" +destination+"'/>");

out.println("<input type='submit' value='proceed'>");
out.println("</div>");
out.println("</form>");

out.println("</div>");
out.println("</div>");
out.println("</article>");
out.println("</div>");


out.println("<div class='col-md-6' id='maplocation' style='height:350px;background-color:#d6e0e4;border: 2px solid #6691bd;width:40%;margin-top: 17%;'; >");

out.println("</div>");
out.println("</div>");
out.println("</div>");
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

	<script type="text/javascript">
	        var source, destination;
	        var darection = new google.maps.DirectionsRenderer;
	        var directionsService = new google.maps.DirectionsService;
	        google.maps.event.addDomListener(window, 'load', function () {
	            new google.maps.places.SearchBox(document.getElementById('source'));
	            new google.maps.places.SearchBox(document.getElementById('destination'));
	            
	        });

	        function get_rout() {
	        	var source1=document.getElementById('source').value;
	        	var destination1=document.getElementById("destination").value;
	            var mapOptions = {
	                mapTypeControl: false,
	                center: {lat: -33.8688, lng: 151.2195},
	                zoom: 13
	            };
	           
	            map = new google.maps.Map(document.getElementById('maplocation'), mapOptions);
	            darection.setMap(map);
	            darection.setPanel(document.getElementById('panallocation'));


	            source = document.getElementById("source").value;
	            destination = document.getElementById("destination").value;

	            var request = {
	                origin: source,
	                destination: destination,
	                travelMode: google.maps.TravelMode.DRIVING
	            };
	            directionsService.route(request, function (response, status) {
	                if (status == google.maps.DirectionsStatus.OK) {
	                    darection.setDirections(response);
	                }
	            });


	            
	            var service = new google.maps.DistanceMatrixService();
	            service.getDistanceMatrix({
	                origins: [source],
	                destinations: [destination],
	                travelMode: google.maps.TravelMode.DRIVING,
	                unitSystem: google.maps.UnitSystem.METRIC,
	                avoidHighways: false,
	                avoidTolls: false
	            }, function (response, status) {
	                if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
	                    var distance = response.rows[0].elements[0].distance.text;
	                    var duration = response.rows[0].elements[0].duration.text;
	                    
	                    distancefinel = distance.split(" ");
	                    $('.distance').val(distancefinel[0]);
	                   
	                    
	                    
	                } else {
	                    alert("Unable to find the distance via road.");
	                }
	            });
	        }
	        
	        var input = document.getElementById('source');
	var options = {
	   componentRestrictions: {
	       country: 'in'
	   }
	};

	var autocomplete = new google.maps.places.Autocomplete(input, options);

	$(input).on('input',function(){
	var str = input.value;
	 var prefix = 'BANGALORE, ';
	if(str.indexOf(prefix) == 0) {
	console.log(input.value);
	} else {
	if (prefix.indexOf(str) >= 0) {
	   	input.value = prefix;
	   } else {
	 	input.value = prefix+str;
	  }
	}

	});
	    
	var input1 = document.getElementById('destination');
	var options1 = {
	   componentRestrictions: {
	       country: 'in'
	   }
	};

	var autocomplete = new google.maps.places.Autocomplete(input, options1);

	$(input1).on('input',function(){
	var str = input1.value;
	 var prefix = 'INDIA, ';
	if(str.indexOf(prefix) == 0) {
	console.log(input.value);
	} else {
	if (prefix.indexOf(str) >= 0) {
	   	input1.value = prefix;
	   } else {
	 	input1.value = prefix+str;
	  }
	}

	});    
	        
	
	    </script>


</body>
</html>