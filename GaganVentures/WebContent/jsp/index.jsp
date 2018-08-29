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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.pogo-slider.js"></script>
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
<!-- JS -->
</head>
<body>
	<!-- navbar -->
	<div class="w3ls-nav">
		<nav class="cd-vertical-nav">
			<ul>
				<li><a href="#home" class="active"><span class="w3label">Home</span></a></li>
				<li><a href="#about"><span class="w3label">About</span></a></li>
				<li><a href="#services"><span class="w3label">Services</span></a></li>
				<li><a href="#portfolio"><span class="w3label">Portfolio</span></a></li>
				<li><a href="#blog"><span class="w3label">Blog</span></a></li>
				<li><a href="#contact"><span class="w3label">Contact</span></a></li>
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
	<div id="imgscr" class="banner">
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
					<img src="${pageContext.request.contextPath}/images/web3.jpg"
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

	<!-- 	About US -->
	<!-- about -->
	<div id="about" class="about cd-section">  
		<div class="container">  
			<div class="col-md-6 about-w3lleft"> 
				<h3 class="w3stitle" style="color:#FF4500;"><span>About us</span></h3>
				<h4>Why Us??????</h4>
				<p>With award-winning residential, commercial and leisure properties across the South, to date, We delivered over 20,230 homes and has a development portfolio of more than 44,000 units at various stages of planning and progress, asserting its place as a leading luxury developer in the region.*<br>

                Join Our family and experience a luxurious lifestyle designed to give you the ultimate sense of comfort.<br>
				Joining forces with some of the world’s most eminent fashion and lifestyle brands, We brought new and exciting living concepts to the market in collaborations that include.</p>
				<a href="#myModal" class="wthree-btn" data-toggle="modal" style="color:#32CD32;"><font color="#FF4500;">Read more </font><span></span></a> 
			</div> 
			<div class="col-md-6 about-w3lright">
				<img src="${pageContext.request.contextPath}/images/img1.jpg" class="img-responsive" alt=" " style="width: 500px;height: 300px;"> 
				<img src="${pageContext.request.contextPath}/images/img2.jpg" class="img-responsive about-w3lright-img2" alt=" " style="width: 500px;height: 300px;"> 
			</div>
			<div class="clearfix"> </div> 
		</div>
	</div>
	<!-- //about -->
	<!-- 	About US -->



	<!-- 	stats -->
	<div class="jumbotron jarallax" data-jarallax data-speed="0.6">
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
	<div data-jarallax-element="430" data-aos="fade-up"
		data-aos-duration="3000" class="fx">
		<img
			src="${pageContext.request.contextPath}/images/building_PNG24561.png">
	</div>
	<!-- 	<div class="pogoSlider" id="demo1">> -->
	<%-- 		<div class="pogoSlider-slide" style="background-image: url(${pageContext.request.contextPath}/images/image2.jpg); height:500px;"> --%>
	<!-- 		</div> -->

	<!-- 		<div class="pogoSlider-slide " data-transition="fold" -->
	<!-- 			data-duration="1000" -->
	<%-- 			style="background-image: url(${pageContext.request.contextPath}/images/image1.jpg); height:500px;"></div> --%>
	<!-- 	</div> -->
	<!-- 	<!-- .pogoSlider -->
	-->
	<script>
		AOS.init({
			duration : 2000,
		});
	</script>

</body>
</html>