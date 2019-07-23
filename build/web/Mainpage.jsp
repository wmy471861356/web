<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Responsive Html5 Templates">
    
	
    <title>健康生活</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min1.css" rel="stylesheet" type="text/css">
	
	<!-- Custom CSS -->
	<link href="css/style1.css" rel="stylesheet">
	
	<!-- Animate.css -->
	<link href="css/animate.css" rel="stylesheet" media="all" type="text/css">
	
	<!-- Lightbox.css -->
	<link href="css/lightbox.min.css" rel="stylesheet" media="all" type="text/css">
	
	<!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	

	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" class="index-page">
<div class="wrap-body">

	<!--////////////////////////////////////Header-->
	<header>
		<!---Main Header--->
		<div class="main-header">
			
			<!--Navigation-->
			<nav id="menu" class="navbar">
				<div class="container-fluid">
					<div class="navbar-header">
					  <span id="heading" class="visible-xs">Health</span>
					  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
						
					</div>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="login.jsp">重新登录</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">膳食<i class="fa fa-chevron-down"></i></a>
								<div class="dropdown-menu" style="margin-left: -3.625px;">
									<div class="dropdown-inner">
										<ul class="list-unstyled">
											<li><a href="recipies.html" target="blank">膳食推荐</a></li>
											<li><a href="menu.jsp"target="blank">食谱查询</a></li>
											<li><a href="calorie.jsp" target="blank">卡路里值</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">运动<i class="fa fa-chevron-down"></i></a>
								<div class="dropdown-menu" style="margin-left: -3.625px;">
									<div class="dropdown-inner">
										<ul class="list-unstyled">
                                                                                    <li><a href="weather.html" target="blank">运动推荐</a></li>
											<li><a href="timer.html" target="blank">运动计时</a></li>
											
										</ul>
									</div>
								</div>
							</li>	
							<li><a href="personData.jsp">健康测试</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<br>
			<br>
			<br>
			<br>
		</div>
	</header>
	<!-- /Section: intro -->


	<!--////////////////////////////////////Container-->
	<section id="page-content" class="index-page">
	
		<!-- ////////////Content Box 01 -->
		<section class="box-content box-1">
			<div class="container">
				<div class="heading wow fadeInUp" data-wow-delay=".1s" data-wow-duration="1s">
					<h2>欢迎回来，<s:property value="un"/> !</h2>
					<hr class="line">
				</div>
				
				<div class="isotopeContainer">
					<div class="col-lg-4 col-sm-4 col-md-6 isotopeSelector art">
						<div class="portfolio-box zoom-effect">
							<img src="images/1-thumb.png" class="img-responsive" alt="">
							<div class="portfolio-box-caption">
								<div class="portfolio-box-caption-content">
									
									<div class="project-social">
										<ul class="list-inline">
                                                                                    <li><a href="food.jsp" target="blank" title="饮食"><i class="fa fa-link" title="饮食"></i></a></li>
                                                                                     
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-sm-4 col-md-6 isotopeSelector art">
						<div class="portfolio-box zoom-effect">
							<img src="images/2-thumb.png" class="img-responsive" alt="">
							<div class="portfolio-box-caption">
								<div class="portfolio-box-caption-content">
									
									<div class="project-social">
										<ul class="list-inline">
											<li><a href="sport.html" target="blank" title="运动"><i class="fa fa-link" value="运动"></i></a></li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-6 isotopeSelector illustrations">
						<div class="portfolio-box zoom-effect">
							<img src="images/3-thumb.png" class="img-responsive" alt="">
							<div class="portfolio-box-caption">
								<div class="portfolio-box-caption-content">
									
									<div class="project-social">
										<ul class="list-inline">
											<li><a href="personData.jsp" target="blank" title="测试"><i class="fa fa-link" value="测试"></i></a></li>				
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				
		</section>
	
	<!-- Footer -->
	
	
	<!-- ========== Scripts ========== -->
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
	<script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="js/lightbox.min.js"></script>
	
	<!-- Definity JS -->
	<script type="text/javascript" src="js/main.js"></script>
	
</div>
</body>
</html>