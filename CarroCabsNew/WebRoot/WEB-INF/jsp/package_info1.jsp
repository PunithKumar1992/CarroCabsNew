<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.appfone.carro.Daoimpl.Package_listDaoimpl"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="title" content="Carro cabs">
<meta name="description"
	content="carro cabs for outstation and trip packages and airport pick up and drop.">
<meta name="keywords"
	content="carro, bangalore cabs, bangalore airpost cabs, bangalore to outstation cabs , taxi services , india taxi service , outstation taxi, local taxi services,  local cabs, 560001 to 560100 bangalore services , kempegowda international airport cabs services, bangalore airport cabs services ,  Kial cabs services, mysore cabs trip packages, trip packages , madikeri trip packages , coorg trip packages , kerala trip planner packages  carto cabs , charriot partner ,">
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
<link rel="stylesheet"
	href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet"
	href="css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/icomoon.css" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Exo+2:400,300,600,700,900,800,200,100,500,400italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="css/pikaday.css">
<link rel="stylesheet" href="css/site.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyBS18tx1fKZDmGkHjsyQoXm2cYbH5xI88M&sensor=false&libraries=places"
	type="text/javascript">
	
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>

<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%!int count = 0;
	String package_namelist[];
	String pack_images[];
	String img;
	String imgpath;
	String packselected;
	
	
	%>
	<%packselected=session.getAttribute("packageselected").toString(); %>
	<header class="cp_header">
	<div id="cp-slide-menu" class="cp_side-navigation">
		<ul class="navbar-nav">
			<li id="close"><a href="#"><i class="fa fa-close"></i></a></li>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">Services
					<i class="fa fa-angle-down"></i>
			</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="outstation.html">Out Station</a></li>
					<li><a href="onedaypackage.html">One Day Packages</a></li>
					<li><a href="packagetour.html">Package Tours</a></li>
					<li><a href="corporate.html">Corporate Tours</a></li>
				</ul></li>
			<li><a href=packages.html">Packages</a></li>
			<li><a href="faq.html">FAQs</a></li>
			<!-- <li><a href="booking.html">View a booking</a> -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">Pages
					<i class="fa fa-angle-down"></i>
			</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="testimonial.html">Testimonial</a></li>

				</ul></li>
			<li><a href="contact-us.html">Contact Us </a></li>
		</ul>
	</div>


	<div class="preloader_wrapper">
		<div id="pre_loader">
			<img src="images/loader.gif" alt="">
		</div>
	</div>


	<div class="cp-navigation-row">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row" style="background-color:white;">
				<div class="col-md-3 col-sm-12 col-xs-6">

					<strong class="cp-logo"> <a href="index.jsp"><img
							src="images/cp-logo.png" alt=""></a>
					</strong>
				</div>
				<div class="col-md-9 col-sm-12 col-xs-6">

					<div class="cp-nav-holder">
						<ul class="navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">Services
									<i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="outstation.html">Out Station</a></li>
									<li><a href="onedaypackage.html">One Day Packages</a></li>
									<li><a href="packagetour.html">Package Tours</a></li>
									<li><a href="corporate.html">Corporate Tours</a></li>
								</ul></li>
							<li><a href="packages.html">Packages</a></li>
							<li><a href="faq.html">FAQs</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">Pages
									<i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="testimonial.html">Testimonial</a></li>
								</ul></li>
							<li><a href="contact-us.html">Contact Us</a></li>
						</ul>
						<ul class="nav-right-listed">
							<li id="search-push"><i class="fa fa-search"></i></li>
							<li id="push" class="cp-sidemenu"><a href="#"><i
									class="fa fa-align-justify"></i></a></li>
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
					<li class="active" style="color: white">Package Information</li>
				</ul>
			</div>
		</div>
		<div class="animate-bus">
			<img src="images/animate-bus2.png" alt="">
		</div>
	</div>


	<div id="cp-main-content">

		<section>
		<div class="container">
			<div class="cp-heading-style2">
				<h3 class="tittle1"
					style="font-size:35px;color: black;text-decoration:justify;"><%=packselected %></h3>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6">

						<div class="cp-faq-holder">

							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active"
									id="ask-tab1">

									<div class="cp-ask-tab-inner">

										<form method="get">
											<style>
input[type=text], select, textarea {
	width: 50%;
	padding: 9px;
	border: 1px solid #ccc;
	border-radius: 13px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
	margin-left: 5%;
}

input[type=date] {
	width: 50%;
	padding: -4px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	width: 25%;
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container11 {
	border-radius: 5px;
	background-color: #2d322d7d;
	padding: 23px;
}

@media screen and (max-width: 320px) {
	/* comes into effect for screens less than or equal to 320 pixels */
	.container11 {
		width: 224px;
		margin-top: 32%;
	}
}

@media screen and (min-width: 321px) and (max-width: 480px) {
	/* comes into effect for screens between 321 and 480 pixels (inclusive) */
	.container11 {
		width: 320px;
		margin-top: 23%;
		margin-left: 5%;
	}
}

@media screen and (min-width: 481px) {
	/* comes into effect for screens larger than or equal to 481 pixels */
	.container11 {
		width: 480px;
	}
}
</style>
											<h3>Sight Seen</h3>
											<ul>
												<li><b style="font-size: 30px;">Mysore</b></li>
												<li><br></li>
												<li style="text-align: justify;">Tippu summer palace,
													Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo,
													Mysore palace, Jaganmohan palace, Church, Old st, marry
													chruch, Brundavan garden.</li>
												<li><br></li>
												<li><b style="font-size: 30px;">Coorg</b></li>
												<li><br></li>
												<li style="text-align: justify;">Golden temple,
													Nisargadhama, Dubare falls, Raja seat, Thalakaveri, Habbi
													falls, Fort.</li>
												<li><br></li>
												<li><br></li>
											</ul>
											<center>
												<a href="PackCarList.html" class="cp-btn-style2"
													style="float: left">Book Now</a>
											</center>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<style>
div.gallery {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 100%;
	height: 68%;
}

div.gallery:hover {
	border: 1px solid #777;
}
</style>
						<div class="gallery">
							<a target="_blank" href="images/coorg.png"> <img
								src="images/coorg.png" alt="carrocabs">
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
		</section>
		<section>
		<div>
			<center>
				<h1 style="margin-top:4%">OTHER PACKAGES</h1>
			</center>

			<div class="container">

				<div class="row">
					<div class="col-md-12 heroSlider-fixed">
						<div class="overlay"></div>
						<!-- Slider -->

						<div class="slider responsive">
							<%
								Package_listDaoimpl packlist = new Package_listDaoimpl();
								count = packlist.getcountlist();
								package_namelist = new String[count];
								package_namelist = packlist.getPackagenameslist();
								pack_images = new String[count];
								pack_images = packlist.getpack_imagelist();
								for (int i = 0; i < count; i++) {
									img = pack_images[i];
									imgpath = "images/packimages/" + img;
									out.println("<div>");
									out.println("<figure class='cp-gallery-box' style='height: 250px;border-radius:12px'> <img src='"+imgpath+"' alt=''> <figcaption class='cp-caption'>");
									out.println("<h4 style='color:white;''>"+package_namelist[i]+"</h4>");
									out.println("<a href='package_info1.html' class='cp-btn-style1'>Book Now</a>");
									out.println("</figcaption> </figure>");
									out.println("</div>");
								}
							%>



						</div>
						<!-- control arrows -->
						<div class="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						</div>
						<div class="next">
							<span class="glyphicon glyphicon-chevron-right"
								aria-hidden="true"></span>
						</div>

					</div>
				</div>
			</div>

		</div>
		</section>
		<!-- <section> -->
		<!-- <div class="col-md-12"> -->

		<!-- <center><h1>Reviews<a href="writereview.html" class="cp-btn-style1" style="margin-left: 4%;text-decoration: none;">Write Review</a></h1> </center> -->
		<!-- <div class="col-md-3" style="margin-left: 5%;"> -->
		<!-- <img src="images/nn.jpg" alt="img"> -->
		<!-- <p style="text-align: justify;">Namita Roa.</p> -->
		<!-- <p style="text-align: justify;">Engineer</p> -->
		<!-- </div> -->
		<!-- <div class="col-md-9" style="margin-left: -5%;"> -->
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
		<!-- <style> -->
		<!-- .checked { -->
		<!-- color: orange; -->
		<!-- } -->
		<!-- </style> -->
		<!-- <h3> Nice to Travel.</h3> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star"></span> -->
		<!-- <span class="fa fa-star"></span> -->

		<!-- <p style="text-align: justify;"><br>The site is full of materials on various programming languages for dummies and can be a real helping hand if you`re not ready to pay for the course yet but want only surf through the info and decide where to progress next. I strongly recommend!</p> -->
		<!-- </div> -->
		<!-- </div> -->
		<!-- <div class="col-md-12"> -->
		<!-- <div class="col-md-3" style="margin-left: 5%;"> -->
		<!-- <img src="images/nn.jpg" alt="img"> -->
		<!-- <p style="text-align: justify;">Namita Roa.</p> -->
		<!-- <p style="text-align: justify;">Engineer</p> -->
		<!-- </div> -->
		<!-- <div class="col-md-9" style="margin-left: -5%;"> -->
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
		<!-- <style> -->
		<!-- .checked { -->
		<!-- color: orange; -->
		<!-- } -->
		<!-- </style> -->
		<!-- <h3> Nice to Travel.</h3> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star"></span> -->
		<!-- <span class="fa fa-star"></span> -->

		<!-- <p style="text-align: justify;"><br>The site is full of materials on various programming languages for dummies and can be a real helping hand if you`re not ready to pay for the course yet but want only surf through the info and decide where to progress next. I strongly recommend!</p> -->
		<!-- </div> -->
		<!-- </div> -->
		<!-- <div class="col-md-12"> -->
		<!-- <div class="col-md-3" style="margin-left: 5%;"> -->
		<!-- <img src="images/nn.jpg" alt="img"> -->
		<!-- <p style="text-align: justify;">Namita Roa.</p> -->
		<!-- <p style="text-align: justify;">Engineer</p> -->
		<!-- </div> -->
		<!-- <div class="col-md-9" style="margin-left: -5%;"> -->
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
		<!-- <style> -->
		<!-- .checked { -->
		<!-- color: orange; -->
		<!-- } -->
		<!-- </style> -->
		<!-- <h3> Nice to Travel.</h3> -->

		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star checked"></span> -->
		<!-- <span class="fa fa-star"></span> -->
		<!-- <span class="fa fa-star"></span> -->

		<!-- <p style="text-align: justify;"><br>The site is full of materials on various programming languages for dummies and can be a real helping hand if you`re not ready to pay for the course yet but want only surf through the info and decide where to progress next. I strongly recommend!</p> -->
		<!-- </div> -->
		<!-- </div> -->
		<!-- <style> -->
		<!-- .pagination { -->
		<!-- display: inline-block; -->
		<!-- } -->

		<!-- .pagination a { -->
		<!-- color: black; -->
		<!-- float: left; -->
		<!-- padding: 8px 16px; -->
		<!-- text-decoration: none; -->
		<!-- } -->

		<!-- .pagination a.active { -->
		<!-- background-color: #4CAF50; -->
		<!-- color: white; -->
		<!-- } -->

		<!-- .pagination a:hover:not(.active) {background-color: #ddd;} -->
		<!-- </style> -->
		<!-- <center> -->
		<!-- <div class="pagination"> -->
		<!-- <a href="#">&laquo;</a> -->
		<!-- <a href="#">1</a> -->
		<!-- <a class="active" href="#">2</a> -->
		<!-- <a href="#">3</a> -->
		<!-- <a href="#">4</a> -->
		<!-- <a href="#">5</a> -->
		<!-- <a href="#">6</a> -->
		<!-- <a href="#">&raquo;</a> -->
		<!-- </div></center> -->
		<!-- </section> -->
		<footer class="cp_footer"> <section
			class="cp-ft-top-section pd-t80">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="footer-about-box">
						<strong class="logo"> <a href="index.jsp"><img
								src="images/cp-logo.png" alt=""></a>
						</strong>
						<p>CARRO is knowing and fullfilling all the moving needs of
							their clients.We have been professional service since many years
							,and we have developed one services in a waay that cater to both
							implicit and explicit needs of our clients.</p>
						<ul class="cp-social-links">
							<li><a href="#"><i class="fa fa-facebook-square"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</section> <section class="cp-ft-bottom-section">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-12">

					<div class="cp-ft-form-box">
						<p style="color: white;margin-bottom: 2%">Contact Us</p>
						<p style="color: white;margin-bottom: 2%">
							<i class="fa fa-phone-square" aria-hidden="true"></i>+91 73537
							23333
						</p>
						<p style="color: white;margin-bottom: 2%">
							<i class="fa fa-address-book" aria-hidden="true"></i>18/9 Sir M
							Vishweshwaraiah Layout 8th Block Muddanapalya Bangalore ,India.
						</p>
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
					<p style="color:white;">All Rights Reserved 2018</p>
				</div>
			</div>
		</div>
		</section> </footer>
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
	<script>
		$('.scrollingtext').bind('marquee', function() { /* .. */
		});
	</script>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js'></script>



	<script src="js/index.js"></script>

</body>
</html>