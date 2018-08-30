<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gagan Ventures</title>
<!-- css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/swipebox.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/cdnav.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/odometer-theme-train-station.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/css/aos.css"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/css/pogo-slider.css"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- css	 -->

<!-- JS -->

<!-- Popper JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	s
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.pogo-slider.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/main.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pogo_slider_main.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/modernizr.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/odometer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/javascript.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easing.js"></script>
<!-- Jarallax -->
<script src="https://unpkg.com/jarallax@1.10/dist/jarallax.min.js"></script>

<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
<!-- Include it if you want to parallax any element -->
<script
	src="https://unpkg.com/jarallax@1.10/dist/jarallax-element.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@14.0/dist/smooth-scroll.polyfills.min.js"></script>
<!-- JS -->
</head>
<body>
	<!-- navbar -->
	<div class="w3ls-nav">
		<nav class="cd-vertical-nav">
			<ul>
				<li><a data-scroll href="#home"><span class="w3label">Home</span></a></li>
				<li><a data-scroll href="#about"><span class="w3label">About</span></a></li>
				<li><a data-scroll href="#services"><span class="w3label">Services</span></a></li>
				<li><a href="#portfolio"><span class="w3label">Portfolio</span></a></li>
				<li><a href="#blog"><span class="w3label">Blog</span></a></li>
				<li><a data-scroll href="#contact"><span class="w3label">Contact</span></a></li>
			</ul>
		</nav>
	</div>
	<!-- navbar -->
	<!-- main -->
	<!-----header part--->
	<div id="id2" class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<img src="${pageContext.request.contextPath}/images/logo1.png">
			</div>
			<div class="col-sm-8">
				<div class="nav navbar-nav navbar-right" id="social">
					<a href="#" class="fa fa-google-plus"></a> <a href="#"
						class="fa fa-twitter"></a> <a href="#" class="fa fa-skype"></a> <a
						href="#" class="fa fa-dribbble"></a>
				</div>
			</div>
		</div>
	</div>
	<!----for image scrolling-->
	<div id="home" class="banner home" data-aos="zoom-out-up"
		data-aos-duration="1000">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Wrapper for slides -->
			<div id="car" class="carousel-inner">
				<div class="item active">
					<img src="${pageContext.request.contextPath}/images/wwe1.jpg"
						alt="picture1" style="width: 1450px; height: 700px;">
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath}/images/w1.jpg"
						alt="picture2" style="width: 1450px; height: 700px;">
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath}/images/ga4.jpg"
						alt="picture3" style="width: 1450px; height: 700px;">
				</div>
			</div>

			<!----linked to javascript-->
			<div id="text" class="centered">GAGAN VENTURES</div>

			<button type="button" class="btn " data-toggle="modal"
				data-target="#myModal">Read More...</button>

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-lg" id="modal_wid">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">DISCOVER YOUR DREAM HOME WITH US</h4>
						</div>
						<div class="modal-body">
							<div class="card" style="width: 400px; background-color: none;">
								<img class="card-img-top"
									src="${pageContext.request.contextPath}/images/h1.jpg"
									alt="Card image" style="width: 100%; height: 250px">
								<div class="card-body">
									<h4 class="card-title" style="color: #19B4CA; padding: 10px">Lorem
										Ipsum Passage,</h4>
									<p class="card-text" style="height: 60px">At vero eos et
										accusamus et iusto odio dignissimos ducimus qui blanditiis
										praesentium</p>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="back_opacity">
				<div class="row">
					<div class="col-sm-4">
						<i class="fa fa-map-marker" aria-hidden="true">BANGALORE,INDIA</i>
					</div>
					<div class="col-sm-4">
						<i class="fa fa-phone" aria-hidden="true"> +91 111 222 3333</i>
					</div>
					<div class="col-sm-4">
						<i class="fa fa-envelope" aria-hidden="true"><a
							href="mailto:info@example.com"> mail@example.com</a></i>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- main -->

	<!-- about -->
	<div id="about" class="about cd-section">
		<div class="container">
			<div class="col-md-6 about-w3lleft">
				<h3 class="w3stitle" style="color: #FF4500;" data-aos="zoom-out-up"
					data-aos-duration="500">
					<span>About us</span>
				</h3>
				<h4 data-aos="flip-left" data-aos-duration="1000">Why Us??????</h4>
				<p data-aos="flip-up" data-aos-duration="1000">
					With award-winning residential, commercial and leisure properties
					across the South, to date, We delivered over 20,230 homes and has a
					development portfolio of more than 44,000 units at various stages
					of planning and progress, asserting its place as a leading luxury
					developer in the region.*<br> >>>>>>> branch 'Common' of
					https://github.com/bdmmaximiner/Project-Maximiner.git Join Our
					family and experience a luxurious lifestyle designed to give you
					the ultimate sense of comfort.<br> Joining forces with some of
					the world’s most eminent fashion and lifestyle brands, We brought
					new and exciting living concepts to the market in collaborations
					that include.
				</p>
				<a href="#myModal" class="wthree-btn" data-toggle="modal"
					style="color: #32CD32;"><font color="green">Read more </font><span></span></a>
			</div>
			<div class="col-md-6 about-w3lright" data-aos="zoom-in-down">
				<img src="${pageContext.request.contextPath}/images/img1.jpg"
					class="img-responsive" alt=" " style="width: 500px; height: 300px;">
				<img src="${pageContext.request.contextPath}/images/img2.jpg"
					class="img-responsive about-w3lright-img2" alt=" "
					style="width: 500px; height: 300px;">
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //about -->
	<!-- 	About US -->



	<!-- 	stats -->
	<div class="jumbotron jarallax stat" data-jarallax data-speed="0.6">
		<div class=container>
			<div class=row>
				<div class="col-sm-3 stats-grid" data-aos="fade-down-right">
					<div class="stats-img">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div>
					<p>
						<strong>Clients</strong>
					</p>
					<div class="odometer" id="cp">0</div>
				</div>
				<div class="col-sm-3 stats-grid" data-aos="fade-down-left">
					<div class="stats-img">
						<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
					</div>
					<p>
						<strong>Completed Projects</strong>
					</p>
					<div class="odometer" id="cl">0</div>
				</div>
				<div class="col-sm-3 stats-grid" data-aos="fade-up-right">
					<div class="stats-img">
						<i class="fa fa-briefcase" aria-hidden="true"></i>
					</div>
					<p>
						<strong>Current Projects</strong>
					</p>
					<div class="odometer" id="cup">0</div>
				</div>
				<div class="col-sm-3 stats-grid" data-aos="fade-up-left">
					<div class="stats-img">
						<i class="fa fa-trophy" aria-hidden="true"></i>
					</div>
					<p>
						<strong>Sales</strong>
					</p>
					<div class="odometer" id="sl">0</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- 	stats -->

	<div class="container" id=services>
		<div class="agileits-hdng">
			<h3 class="w3stitle" data-aos="zoom-in">
				<span>Services</span>
			</h3>
		</div>
		<div class="services-w3ls-row">
			<div
				class="col-md-4 col-sm-4 col-xs-6 services-grid agileits-w3layouts"
				data-aos="flip-left">
				<span class="glyphicon glyphicon-home effect-1" aria-hidden="true"></span>
				<h5>Appartment</h5>
				<p>We provide Appartments at your prefered location..</p>
			</div>
			<div
				class="col-md-4 col-sm-4 col-xs-6 services-grid agileits-w3layouts"
				data-aos="fade-right">
				<span class="glyphicon glyphicon-list-alt effect-1"
					aria-hidden="true"></span>
				<h5>Individual Home</h5>
				<p>Get your dream Individual home at your prefered Location..</p>
			</div>
			<div
				class="col-md-4 col-sm-4 col-xs-6 services-grid agileits-w3layouts"
				data-aos="flip-right">
				<span class="glyphicon glyphicon-tree-deciduous effect-1"
					aria-hidden="true"></span>
				<h5>Interrior Design</h5>
				<p>Decore your home with better planning and Build your dream
					home with us..</p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-6 services-grid bottom-grids"
				data-aos="flip-left">
				<span class="glyphicon glyphicon-globe effect-1" aria-hidden="true"></span>
				<h5>Open Land</h5>
				<p>Bye your own land and build your dream home with Us..</p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-6 services-grid bottom-grids"
				data-aos="fade-left">
				<span class="glyphicon glyphicon-cutlery effect-1"
					aria-hidden="true"></span>
				<h5>Hotels</h5>
				<p>We also design hotels and many more thing at best price..</p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-6 services-grid bottom-grids"
				data-aos="flip-left">
				<span class="glyphicon glyphicon-th-large effect-1"
					aria-hidden="true"></span>
				<h5>Architecture</h5>
				<p>We have best architectute with us to design your dream</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div id=portfolio></div>

	<div id=blog></div>
	<div id="contact" class="contact cd-section">
		<div class="container">
			<div class="agileits-hdng">
				<h3 class="w3stitle" data-aos="zoom-in-down">
					<span>Contact us</span>
				</h3>
			</div>
			<div class="contact-row agileits-w3layouts">
				<div class="col-md-6 col-sm-6 contact-w3lsleft"
					data-aos="zoom-in-right">
					<div class="contact-grid agileits">
						<h4>DROP US A LINE</h4>
						<form action="#" method="post">
							<input type="text" name="Name" placeholder="Name" required>
							<input type="email" name="Email" placeholder="Email" required>
							<input type="text" name="Phone Number" placeholder="Phone Number"
								required>
							<textarea name="Message" placeholder="Message..." required></textarea>
							<input type="submit" value="Submit">
						</form>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 contact-w3lsright"
					data-aos="flip-right">
					<h6>
						<span>Making your space truly yours...</span>Feel free to get in
						touch with us if we have a new project or simply something awesome
					</h6>
					<div class="address-row">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
							<h5>Visit Us</h5>
							<p>Broome St, Canada, NY 10002, New York</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="address-row w3-agileits">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
							<h5>Mail Us</h5>
							<p>
								<a href="mailto:info@example.com"> mail@example.com</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="address-row">
						<div class="col-xs-2 address-left">
							<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 address-right">
							<h5>Call Us</h5>
							<p>+01 222 333 4444</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<!-- <!-- 	building -->
	<!-- 	<div data-jarallax-element="430" data-aos="fade-up" -->
	<!-- 		data-aos-duration="3000" class="fx"> -->
	<!-- 		<img -->
	<%-- 			src="${pageContext.request.contextPath}/images/building_PNG24561.png"> --%>
	<!-- 	</div> -->
	<!-- <!-- 	building -->



	<!-- 	<div class="pogoSlider" id="demo1">> -->
	<%-- 		<div class="pogoSlider-slide" style="background-image: url(${pageContext.request.contextPath}/images/image2.jpg); height:500px;"> --%>
	<!-- 		</div> -->

	<!-- 		<div class="pogoSlider-slide " data-transition="fold" -->
	<!-- 			data-duration="1000" -->
	<%-- 			style="background-image: url(${pageContext.request.contextPath}/images/image1.jpg); height:500px;"></div> --%>
	<!-- 	</div> -->
	<!-- 	<!-- .pogoSlider -->
	<script>
		AOS.init({
			duration : 3000,
		});
	</script>
	<script>
		$(function() {
			$('.wthree-btn').on(
					'mouseenter',
					function(e) {
						var parentOffset = $(this).offset(), relX = e.pageX
								- parentOffset.left, relY = e.pageY
								- parentOffset.top;
						$(this).find('span').css({
							top : relY,
							left : relX
						})
					}).on(
					'mouseout',
					function(e) {
						var parentOffset = $(this).offset(), relX = e.pageX
								- parentOffset.left, relY = e.pageY
								- parentOffset.top;
						$(this).find('span').css({
							top : relY,
							left : relX
						})
					});
			$('[href=#]').click(function() {
				return false
			});
		});
	</script>
	<script>
		var scroll = new SmoothScroll('a[href*="#"]');
	</script>
</body>
</html>