<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Career Details Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<!-- Include All CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="../css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/preset.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- End Include All CSS -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <![endif]-->
<!-- Favicon Icon -->
<link rel="icon" type="image/x-icon" href="assets/images/maxi_logo.html">
</head>
<body class="service_page index home_1">
	<!-- ========= preloader ========== -->
	<div class="preloader">
		<img src="assets/images/loader.gif" alt="">
	</div>
	<!-- ========= End preloader ========== -->
	<!--Header Start-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.html">
	<script
		src="ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.html"></script>
	<script
		src="maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.html"></script>
	<style>
.modal-header, h4, .close {
	background-color: #008080;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #008080;
}
</style>
	<!-- Modal -->
	<div class="modal fade" id="modalLogin" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content" style="margin-top: 100px;">
				<div class="modal-header" style="padding: 35px 50px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Login
					</h4>
				</div>
				<div class="alert alert-success text-center hide" id="success_usr"></div>
				<div class="alert alert-danger text-center hide" id="err_usr"></div>
				<div class="modal-body" style="padding: 40px 50px;"></div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal" style="background-color: #FF0000;">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
					<p style="color: black;">
						Not a member? <a href="index.jsp" style="color: white;">Sign
							Up</a>
					</p>
					<p style="color: black;">
						Forgot <a href="ForgotPassword.jsp" style="color: white;">Password?</a>
					</p>
				</div>
			</div>

		</div>
	</div>
	<%
		RequestDispatcher rd = null;
		session = request.getSession();
		try 
		{
			if (session != null) 
			{
				String username = session.getAttribute("username").toString();

			}
		}
		catch(NullPointerException n)
		{
			out.println("<script> ");
			out.println("alert(\"You have to Login First to apply ajob!!!!!!!!!!!!!!!!\");");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}		
		catch (Exception e) 
		{			
			e.printStackTrace(); //If not null pointer,then it gives other exceptions.
		}
	%>
	<h1>Welcome</h1>
	<h5>
		<a href="jsp/careers.jsp">"<%=session.getAttribute("username")%>"
		</a>
	</h5>
	&nbsp
	<a href="signout.jsp">Signout</a>
	<header class="header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-lg-3 col-sm-3 hidden-xs">
					<div class="logo">
						<a href="index-2.html"> <img
							src="assets/images/maximiner_logo.png" height="100px"
							width="100px" alt="">
						</a>
					</div>
				</div>
				<div class="col-lg-9 col-sm-9 menu_section">
					<nav class="mainnav">
					<div class="logoMobile hidden-lg hidden-sm hidden-md">
						<a href="index-2.html"> <img
							src="assets/images/maximiner_logo.png" height="100px"
							width="100px" alt="">
						</a>
					</div>
					<div class="mobileMenu">
						<span></span> <span></span> <span></span>
					</div>
					<ul>
						<li class="has-menu-items"><a class="drop_menu"
							href="index-2.html">Home</a></li>
						<li class="has-menu-items"><a href="about-us.html">About</a>
						</li>
						<li class="has-menu-items"><a href="services.html">Services</a>
						</li>
						<li class="has-menu-items"><a href="careers.jsp">Careers</a>
						</li>
						<li class="has-menu-items"><a href="contact.jsp">Contact</a>
						</li>
						<li class="has-menu-items"><a href="#" data-toggle="modal"
							data-target="#modalLogin" id="myBtn">Login</a></li>
						<li class="has-menu-items"><a href="index.jsp">Register</a></li>
					</ul>
					</nav>

				</div>
			</div>
		</div>
	</div>
	</header>
	<!--Header End-->
	<!--Breadcrumb Start-->
	<section class="breadcrumbSec">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center breadsec">
				<h1 class="breadTitle">CAREER</h1>
				<div class="breadCumpNav">
					<a href="index-3.html">Home</a> <i class="fa fa-angle-right"></i> <a
						href="#">Career</a>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--Breadcrumb End-->
	<!--Service Section Start-->
	<section class="commonSection service_sec bgwhite">
	<div class="container">
		<div class="row">
			<h3 class="text-semibold text-muted">Career</h3>
			<br>
			<div class="well well-sm">
				<p class="text-justify" style="margin: 15px;">An employee is
					valuable to its company and how much he/she is valued is directly
					proportional to the training, experience and the kind of
					environment he gets there. And what makes the job even more
					exciting are the raises and cool perks provided by the company. Do
					you agree? Because it's not just about the shining package that you
					are offered initially, it's also about the overall development of
					the employee.</p>
				<hr>
				<p class="text-justify text-muted" style="margin: 15px;">
					Please Send your CV : <a href="mailto: info@maximineranalytics.com"
						class="text-info text-semibold"> info@maximineranalytics.com</a>
				</p>
			</div>
		</div>
		<form action="<%=request.getContextPath()%>/careerapply" method="post">
			<div class="row career-service-row" style="padding: 10px;">
				<div>


					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Java Developers</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="1"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_1" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>BE Btech Mca BSC 2015/16/17/18 with all 60%.</li>
										<li>Good communication skills.</li>
										<li>Hands on experience in Java Persistence API (JPA)</li>
										<li>Experience in requirement gathering, analysis and
											working on functional specification</li>
										<li>Strong coding experience in Core Java & J2ee</li>
										<li>Knowledge about WebObjects will be an added advantage</li>
									</ul>
									<strong>Job Description:</strong>
									<ul>
										<li>Develop J2EE applications with backend as any of
											database systems like Oracle or SQL Server.</li>
										<li>Collaborate with Development, QA, and Professional
											Services teams to ensure smooth deployment, stabilization and
											maintenance of customer installations.</li>
										<li>Manage customer issues taking changing priorities and
											SLA into consideration</li>
										<li>Promote detailed communication and sharing of
											information among overall Technical Support and Engineering
											support organizations</li>
										<li>Take ownership for and respond to client escalations
											as appropriate</li>
										<li>Develop project proposals</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply JAVA"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>.Net developers</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="2"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_2" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>BE Btech Mca BSC 2015/16/17/18 with all 60%.</li>
										<li>Proven experience as a .NET Developer or
											Application Developer.</li>
										<li>Familiarity with the ASP.NET framework, SQL
											Server,  Model-View-Controller (MVC), Jquery.</li>
										<li>Knowledge of at least one of the .NET languages 
											and HTML5/CSS3.</li>
										<li>Understanding of Agile methodologies.</li>
										<li>Excellent troubleshooting and communication skills.</li>
									</ul>
									<strong>Job Description:</strong>
									<ul>
										<li>Participate in requirements analysis.</li>
										<li>Collaborate with internal teams and onsite team to
											produce software design and architecture.</li>
										<li>Write clean, scalable code using .NET programming
											languages.</li>
										<li>Test and deploy applications and systems</li>
										<li>Revise, update, refactor and debug code</li>
										<li>Improve existing software.</li>
										<li>Develop documentation throughout the software
											development life cycle (SDLC).</li>
										<li>Serve as an expert on applications and provide
											technical support.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply .Net"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Tester</h2>
							<br /> <span>Experience: 0-3 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="3"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_3" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>BE Btech Mca BSC 2015/16/17/18 with all 60%.</li>
										<li>Good communication skills.</li>
										<li>Knowledge of Quality Center and Mantis will be an
											added advantage.</li>
										<li>Good knowledge software testing process.</li>
										<li>Good knowledge of SDLC and STLC.</li>
										<li>Candidate must have basic understanding of database.</li>
										<li>Sound knowledge of testing and bug reporting tools.</li>
										<li>Excellent written and verbal communication skills.</li>
										<li>Certification on automation (Selenium/QTP/LR) and
											manual testing will be preferred.</li>
										<li>Candidate should have good analytical skills.</li>
										<li>Candidate should be ability to think out of the Box.</li>
									</ul>
									<strong>Job Description:</strong>
									<ul>
										<li>Prepare test cases, test scenarios, and requirements
											traceability matrix based on business requirements</li>
										<li>Understand the functions of application, identify
											defects by testing and analyze it to find the root cause.</li>
										<li>Prepare root cause analysis document for identified
											bug and escalate it.</li>
										<li>Test newly developed or modified
											feature/functionality in the application against the SRS</li>
										<li>Ensure that application satisfies functional and
											non-functional requirements</li>
										<li>Execute test cases in Quality Center</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Tester"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Network Engineer</h2>
							<br /> <span>Experience: 0-3 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="4"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_4" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>BE Btech Mca BSC 2015/16/17/18 with all 60%.</li>
										<li>Good communication skills.</li>
										<li>CCNA/MS/RedHat Certification is a plus.</li>
										<li>Should have troubleshooting skills in network and
											system administration.</li>
										<li>Working experience on Windows 7, RedHat, Windows
											server 2003, Windows 2008.</li>
										<li>Good working knowledge of VMWare ESX, View, Vsphere.</li>
										<li>Working knowledge of Windows and RedHat OS and
											configurations.</li>
										<li>Knowledge about Web servers Tomcat, Apache, LAMP,
											WAMP, IIS.</li>
										<li>Knowledge of any of the following disciplines is a
											strong advantage.</li>
										<li>Networking</li>
										<li>SAN storage</li>
									</ul>
									<strong>Job Description:</strong>
									<ul>
										<li>Diagnose hardware and software problems and replace
											defective components.</li>
										<li>Maintain an inventory of parts for emergency repairs.</li>
										<li>Coordinate with vendors and with company personnel in
											order to facilitate purchases.</li>
										<li>Alerts monitoring.</li>
										<li>Perform daily system monitoring, verifying the
											integrity and availability of all hardware, server resources,
											systems and key processes, reviewing system and application
											logs, and verifying completion of scheduled jobs such as
											backups.</li>
										<li>Maintain data center environmental and monitoring
											equipment</li>
										<li>Develop and maintain installation and configuration
											procedures.</li>
										<li>Contribute to and maintain system standards.</li>
										<li>Research and recommend innovative, and where possible
											automated approaches for system administration tasks.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Network"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Designing Engineer</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="5"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_5" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>Year 2015/2016/17/18 passed out Freshers (BE /
											MTech).</li>
										<li>BE in E&C, E&E or Instrumentation Tech or MTech in
											VLSI Design & Embedded Systems, VLSI Design & Testing,
											Digital Electronics.</li>
										<li><b>Engineering cut off score : </b>75% or 7.75 CGPA.</li>
										<li>Preference would be given candidates trained from
											reputed VLSI training institutes.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Design"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>DBA/Data Analyst</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="6"
									onclick="func_slide(this);">
									Eligibility & Job Description<i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_6" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>Any graduate or post graduate in IT.</li>
										<li>DBA certification (OCP) will be preferred.</li>
										<li>Knowledge of Linux will be an added advantage.</li>
										<li>Knowledge of PL/SQL and Java Stored Procedures will
											be added advantage.</li>
									</ul>
									<strong>Job Description:</strong>
									<ul>
										<li>Installing, patching, and managing Oracle Database
											Server.</li>
										<li>Writing optimized complex SQL queries.</li>
										<li>Maintaining sound backup and recovery procedures.</li>
										<li>Performing database tuning and performance
											monitoring.</li>
										<li>Tuning expensive SQLs.</li>
										<li>Assisting developers and support team with database
											activities.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply DBA"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>SAP</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="7"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_7" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>BE Btech Mca BSC 2015/16/17/18 with all 60%.</li>
										<li>Should have BASIC KNOWLEDGE ON ABAP,BASIS,FICO, SD,
											MM,HR,SCM module.</li>
										<li>GoodExposure on BDC,BAPI, Exits, BTE, Enhancements,
											SAP Scripts,Module Pool.</li>
										<li>Must have good working exposure specially on SAP
											Scripts.</li>
										<li>Worked closely with external system integration.</li>
										<li>Working with functional consultant for Requirement
											gathering,configuration, testing, training and supporting end
											users as and when required.</li>
										<li>Very good Communication (verbal & written),
											Presentation skills and proper e-mail etiquette. Good and
											independent working attitude towards solutioning.</li>
										<li>Should be willing to work as per project shift
											timings.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply SAP"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Digital Marketing</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<div class="career-service-acrdn">
								<h5 class="elgblty-dscrptn" data-value="7"
									onclick="func_slide(this);">
									Eligibility & Job Description <i class="fa fa-caret-down"></i>
								</h5>
								<div data-slide="slide_7" class="dscrptn">
									<strong>Eligibility:</strong>
									<ul>
										<li>Any graduate or post graduate.</li>
										<li>Data-driven and analytical to identify trends and
											insights and continuously optimize performance.</li>
										<li>Deep expertise in digital marketing to a B2B /B2C
											audience required.</li>
										<li>Familiarity with brand management, content strategy,
											alliances marketing.</li>
										<li>Highly creative with experience in identifying target
											audiences and devising digital campaigns that engage, inform
											and motivate.</li>
										<li>Ability to work closely with other teams.</li>
										<li>Deep & hands-on knowledge of Ad words, SEM/SEO,
											display marketing, affiliates marketing, paid SMM, Double
											Click (search, display) remarketing.</li>
										<li>Should be well versed with Google Analytics,
											Webmasters, and other web analytics tools.</li>
										<li>Hands on experience in both On page SEO strategies
											and Off page SEO strategies.</li>
										<li>Basic level of technical understanding of server,
											site architecture, sitemaps, robots.txt, HTML, meta tags.</li>
										<li>Ability to document requirements with clarity for
											easy of execution by the technical team.</li>
										<li>Awareness of online marketing disciplines and how
											they contribute to customer acquisition, conversion and
											retention.</li>
									</ul>
									<strong>Job Description :</strong>
									<ul>
										<li>Devise digital marketing strategies and initiate
											campaigns to drive traffic to the website and generate
											inbound leads.</li>
										<li>Optimize budgets and programs by applying exploratory
											analysis, testing and advanced modeling to maximize returns
											on marketing investment.</li>
										<li>Manage digital marketing plans, vendors, and
											implementation across search, social, video, email marketing,
											affiliates and other digital channels.</li>
										<li>Design, build and maintain our social media presence.</li>
										<li>Implement innovative social media campaigns across
											social media platforms like Facebook, Twitter, YouTube,
											LinkedIn, Instagram, WhatsApp, Google +, blogging-based
											platforms, etc.</li>
										<li>Drive Mobile marketing strategy & plan as well as
											Social Media Strategy & Plan.</li>
										<li>Deliver paid digital media marketing SEM, SMM, SEO,
											Affiliates, etc.</li>
										<li>Optimize search campaigns regularly for maximizing
											the output keyword optimization, ad copy optimization,
											campaign optimization, landing page optimization.</li>
										<li>Collaborate with internal teams to create landing
											pages and optimize user experience.</li>
										<li>Create a roadmap of on-site changes that boost SEO on
											a continual basis and develop the specifications to convey it
											to the technical team.</li>
										<li>Measure and report the performance of paid digital
											campaigns.</li>
										<li>Evaluate emerging technologies. Provide thought
											leadership and perspective for adoption where appropriate.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Digital"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Production Engineer</h2>
							<br /> <span>Experience: 2-5 Years</span>
							<!-- <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description  <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success"
							value="Apply Production" name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Quality Engineer</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<!--  <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description  <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Quality"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>SQL Developer</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<!-- <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply SQL"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Technical Support Engineer</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<!-- <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success"
							value="Apply Technical" name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>UI Developer</h2>
							<br /> <span>Experience: 0-5 Years</span>
							<!-- <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply UI"
							name="submit">
					</div>
				</div>
			</div>
			<div class="row career-service-row" style="padding: 10px;">
				<div>
					<div class="col-md-12"></div>
					<div class="col-md-12">
						<div class="text-left career-service-left">
							<h2>Liferay Portal Developer</h2>
							<br /> <span>Experience: 3-5 Years</span>
							<!--  <div class="career-service-acrdn">
                           <h5 class="elgblty-dscrptn">Eligibility & Job Description <i class="fa fa-caret-down"></i></h5>
                           <div id="dscrptn" class="dscrptn">
                              <strong>Eligibility:</strong>
                              <ul>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                                 <li>Any graduate or post graduate</li>
                              </ul>
                           </div>
                        </div> -->
						</div>
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="Apply Liferay"
							name="submit">
					</div>

				</div>

			</div>
		</form>
	</div>


	</section>
	<!--Service Section End-->
	<!--Footer Start-->
	<!--Footer Start-->
	<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-sm-6">
				<div class="widget">
					<h3 class="fotterTitle">ABOUT US</h3>
					<p class="fotinfo">At Maximiner we follow a well-defined
						methodology that enables customers to exploit the benefits of our
						development, and in most cost-effective manner possible.</p>
					<div class="footerSocial">
						<a class="fac" href="#"><i class="fa fa-facebook"></i></a> <a
							class="twi" href="#"><i class="fa fa-twitter"></i></a> <a
							class="goo" href="#"><i class="fa fa-google-plus"></i></a> <a
							class="pin" href="#"><i class="fa fa-pinterest"></i></a> <a
							class="lin" href="#"><i class="fa fa-linkedin"></i></a>
					</div>
				</div>
			</div>
			<div class="clearfix hidden-lg hidden-xs"></div>
			<div class="col-lg-3 col-sm-6">
				<div class="widget">
					<h3 class="fotterTitle">navigation</h3>
					<ul id="primary-menu"
						class="main-header-menu ast-flex ast-justify-content-flex-end submenu-with-border">
						<li id="menu-item-727"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item menu-item-727"><a
							href="index-2.html">Home</a></li>
						<li id="menu-item-726"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-726"><a
							href="about-us.html">About</a></li>
						<li id="menu-item-725"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-725"><a
							href="services-2.html">Services</a></li>
						<li id="menu-item-724"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-724"><a
							href="contact-2.html">Contact</a></li>
						<li class="menu-item-727"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-727"><a
							href="Career-2.html">Careers</a></li>
						<li
							class="ast-masthead-custom-menu-items text-html-custom-menu-item">
						<li class="has-menu-items"><a href="#" data-toggle="modal"
							data-target="#modalLogin" id="myBtn">Login</a></li>
						<li class="has-menu-items"><a href="index.html">Register</a>
						</li>
						<li
							class="ast-masthead-custom-menu-items text-html-custom-menu-item">
						</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="widget">
					<h3 class="fotterTitle">Latest Twitter</h3>
					<p class="twitter_text">
						<a href="#">@ Maximiner </a>‏ Best Software Developers in India.
					</p>
					<p class="twitter_text">
						<a href="#">@ Maximiner </a>‏Best IT Staffing in India.
					</p>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="widget">
					<h3 class="fotterTitle">Our Newslatter</h3>
					<p class="newslatp">Sign up for our mailing list to get latest
						updates and offers.</p>
					<form action="#" method="post" class="newsletter"
						id="subscriptionsforms">
						<input type="email" id="sub_email" name="sub_email"
							placeholder="Your email...">
						<button type="submit" id="subs_submit" name="subs_submit">
							<i class="fa fa-paper-plane"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!--Footer End-->
	<!--Copy Right start-->
	<section class="copyright">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-xs-12">
				<p>© 2018 Maximiner Analytics Pvt. Ltd. All rights reserved.</p>
			</div>
		</div>
	</div>
	</section>
	<!--Copy Right End-->
	<!--Footer End-->
	<!--Copy Right start-->

	<!--Copy Right End-->
	<a href="#" id="backToTop"><i class="fa fa-angle-up"></i></a>
	<!-- Include All JS -->
	<script type="text/javascript" src="assets/js/jquery.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.js"></script>
	<script type="text/javascript" src="assets/js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="assets/js/mixer.js"></script>
	<script type="text/javascript" src="assets/js/theme.js"></script>
	<script type="text/javascript">
		function send_email() {
			// alert("hello");
			var name = $("#con_name").val();
			var phone = $("#con_mobile").val();
			var email = $("#con_email").val();
			var massage = $("#con_message").val();
			var emailRegExp = /^([a-zA-Z0-9_\-])+(\.([a-zA-Z0-9_\-])+)*@((\[(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5])))\.(((([0-1])?([0-9])?[0-9])|(2[0-4][0-9])|(2[0-5][0-5]))\]))|((([a-zA-Z0-9])+(([\-])+([a-zA-Z0-9])+)*\.)+([a-zA-Z])+(([\-])+([a-zA-Z0-9])+)*))$/;
			var mobileRegExp = /^\d{10}$/;
			var isError = "false";
			var eMsg = "";
			if (name == "") {
				isError = "true";
				eMsg = "Please enter your Name.";
			} else if (email == "" || !emailRegExp.test(email)) {
				isError = "true";
				eMsg = "Please enter your Valid E-Mail.";
			} else if (phone == "" || !mobileRegExp.test(phone)) {
				isError = "true";
				eMsg = "Please enter your Correct Mobile Number.";
			} else if (massage == "") {
				isError = "true";
				eMsg = "Please enter your Massage.";
			}
			if (isError == "true") {
				$("#errormsg").removeClass("hide");
				$('#errormsg').fadeIn().html(eMsg);
				setTimeout(function() {
					$('#errormsg').fadeOut("slow");
				}, 6000);
			} else {

				data = new FormData($('#formcontactForm')[0]);
				$(".EmailSend").html(
						"<i class='fa fa-spinner fa-spin'></i> wait...");
				$(".EmailSend").attr("disabled", true);

				$.ajax({
					cache : false,
					contentType : false,
					processData : false,
					type : "POST",
					url : "http://maximineranalytics.com/mycon/sendemail",
					data : data,
					success : function(data) {
						if (data == "success") {
							$("#successmsg").removeClass("hide");
							$('#successmsg').fadeIn().html(
									"Email send successfully.");
							setTimeout(function() {
								$('#successmsg').fadeOut(2000, function() {
									location.reload(true);
								});
							}, 6000);
						} else if (data == "fails") {
							$("#errormsg").removeClass("hide");
							$('#errormsg').fadeIn().html(
									"OOPS ! Something going wrong.");
							setTimeout(function() {
								$('#errormsg').fadeOut("slow");
							}, 6000);

						}

					}
				});

			}

		}

		function checkUniqueEmail(email) {
			eml = email;
			if (eml != '') {
				$
						.ajax({
							url : "http://maximineranalytics.com/mycon/check_exists_email",
							data : {
								eml : eml
							},
							type : 'POST',
							success : function(data) {
								if (data > 0) {
									$("#alrt-error").removeClass("hide");
									$(".existusr").prop('disabled', true);
									$('#alrt-error').fadeIn().html(
											"User Exists.");
									setTimeout($('#alrt-error').fadeOut(6000));
								} else {
									$("#alrt-success").removeClass("hide");
									$(".existusr").prop('disabled', false);
									$('#alrt-success').fadeIn().html(
											"New User.");
									setTimeout($('#alrt-success').fadeOut(6000));
								}
							}
						});
			}
		}
		$(function() {
			$(document).on('change', '#email', function() {
				checkUniqueEmail(this.value);
			});
		});

		function checkUnique(id) {
			eml = id;
			if (eml != '') {
				$
						.ajax({
							url : "http://maximineranalytics.com/mycon/check_user_availbility",
							data : {
								eml : eml
							},
							type : 'POST',
							success : function(data) {
								if (data > 0) {
									$("#alrt-error").removeClass("hide");
									$(".existusr").prop('disabled', true);
									$('#alrt-error').fadeIn().html(
											"User Exists.");
									setTimeout($('#alrt-error').fadeOut(6000));
								} else {
									$("#alrt-success").removeClass("hide");
									$(".existusr").prop('disabled', false);
									$('#alrt-success').fadeIn().html(
											"New User.");
									setTimeout($('#alrt-success').fadeOut(6000));
								}
							}
						});
			}
		}
		$(function() {
			$(document).on('change', '#user_name', function() {
				checkUnique(this.value);
			});
		});

		$("#formLogin")
				.submit(
						function(e) {
							e.preventDefault();
							data = new FormData($('#formLogin')[0]);
							$
									.ajax({
										url : "http://maximineranalytics.com/mycon/user_login",
										data : data,
										type : 'POST',
										cache : false,
										contentType : false,
										processData : false,
										success : function(data) {
											console.log(data);
											if (data == 'deactive') {
												$("#err_usr").removeClass(
														"hide");
												$('#err_usr')
														.fadeIn()
														.html(
																"Your Account has been Dectivated");
												setTimeout(function() {
													$('#err_usr').fadeOut(2000,
															function() {
																// location.reload(true);
															});
												}, 6000);
											} else if (data == 'success') {
												$("#success_usr").removeClass(
														"hide");
												$('#success_usr')
														.fadeIn()
														.html(
																"User Login Successfully.");
												setTimeout(
														function() {
															$('#success_usr')
																	.fadeOut(
																			2000,
																			function() {
																				window.location = 'http://maximineranalytics.com/'
																						+ 'mycon/dashboard';
																				// location.reload(true);
																			});
														}, 5000);
											} else if (data == 'fail') {
												$("#err_usr").removeClass(
														"hide");
												$('#err_usr')
														.fadeIn()
														.html(
																"Incorrect Username or Password.");
												setTimeout(function() {
													$('#err_usr').fadeOut(2000,
															function() {
															});
												}, 6000);
											} else if (data == 'error') {
												$("#err_usr").removeClass(
														"hide");
												$('#err_usr')
														.fadeIn()
														.html(
																"OOPS ! Something going wrong.");
												setTimeout(function() {
													$('#err_usr').fadeOut(2000,
															function() {
															});
												}, 6000);
											}
										}
									});
							//alert(Object.keys(data).length);
						});
	</script>
	<script>
		$(document)
				.ready(
						function() {
							$('#register_form')
									.bootstrapValidator(
											{
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													first_name : {
														validators : {
															stringLength : {
																min : 2,
															},
															notEmpty : {
																message : 'Please enter your First Name'
															}
														}
													},
													last_name : {
														validators : {
															stringLength : {
																min : 2,
															},
															notEmpty : {
																message : 'Please enter your Last Name'
															}
														}
													},
													birth_date : {
														validators : {
															notEmpty : {
																message : 'Please Enter Date Of Birth'
															}
														}
													},
													joining_date : {
														validators : {
															notEmpty : {
																message : 'Please Enter Date Of Joining'
															}
														}
													},
													user_name : {
														validators : {
															stringLength : {
																min : 8,
															},
															notEmpty : {
																message : 'Please enter your Username'
															},
														}
													},
													user_password : {
														validators : {
															stringLength : {
																min : 6,
															},
															notEmpty : {
																message : 'Please enter your Password'
															},
															identical : {
																field : 'confirm_password',
																message : 'The password and its confirm are not the same'
															}
														}
													},
													confirm_password : {
														validators : {
															stringLength : {
																min : 6,
															},
															notEmpty : {
																message : 'Please Confirm your Password'
															},
															identical : {
																field : 'user_password',
																message : 'The password and its confirm are not the same'
															}
														}
													},
													email : {
														validators : {
															notEmpty : {
																message : 'Please enter your Email Address'
															},
															emailAddress : {
																message : 'Please enter a valid Email Address'
															}
														}
													},
													contact_no : {
														validators : {
															stringLength : {
																min : 10,
																max : 10,
																notEmpty : {
																	message : 'Please enter your Contact No.'
																}
															}
														},

														gender : {
															validators : {
																notEmpty : {
																	message : 'The gender is required'
																}
															}
														},
														address : {
															validators : {
																stringLength : {
																	min : 10,
																	message : 'Please enter at least 10 characters and no more than 200'
																},
																notEmpty : {
																	message : 'Please Enter your address.'
																}
															}
														},
														designation : {
															validators : {
																notEmpty : {
																	message : 'Please select your Designation'
																}
															}
														},
													}
												}
											})
									.on(
											'success.form.bv',
											function(e) {
												$('#success_message')
														.slideDown({
															opacity : "show"
														}, "slow") // Do something ...
												$('#register_form').data(
														'bootstrapValidator')
														.resetForm();

												// Prevent form submission
												e.preventDefault();

												// Get the form instance
												var $form = $(e.target);

												// Get the BootstrapValidator instance
												var bv = $form
														.data('bootstrapValidator');

												$
														.post(
																$form
																		.attr('action'),
																$form
																		.serialize(),
																function(result) {
																	console
																			.log(result);
																}, 'json');
											});
						});
	</script>
	<script>
		function func_slide(ids) {
			var dval = $(ids).data("value");
			$(ids).next('div').slideToggle("slow");
		}
	</script>




</body>
</html>