<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="database.*,java.sql.*"%>
<%
        String [] dn = new String[12];
        String [] img = new String[12];
        String [] href = new String[12];
        int i=0;
        for(int j=0;j<12;j++){
            img[j]="images/blank.jpg";
        }
        for(int j=0;j<12;j++){
            dn[j]="无";
        }
        for(int j=0;j<12;j++){
            href[j]="images/blank.jpg";
        }
	DatabaseUtil dbUtil=new DatabaseUtil();
	String un=session.getAttribute("username").toString();
	String sql="select * from dishes where username='"+un+"'";
	ResultSet rs=dbUtil.executeQuery(sql);
	while(rs.next()){
		dn[i]=rs.getString("dishname");
                img[i]=rs.getString("img");
                href[i]="mydish.jsp?dishname="+rs.getString("dishname");
                i++;
        }
%>
<!DOCTYPE html>

<html lang="en-gb">

<head>
	<!--[if lt IE 7]><style type="text/css">html{display:none;}</style><script>alert('Please get a new browser!');</script><![endif]-->
	
	<script src="js/jquery.min.js"></script>
	<script>!window.jQuery && document.write('<script src="js/jquery.1.5.2.js"><\/script>')</script>

	<script>
		jQuery.noConflict();
	</script>

	<!--[if IE]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="index, follow" />
	<meta name="keywords" content="restaurant, cafe, template, coffee shop, te contei" />
	<meta name="rights" content="Demente Design" />
	<meta name="language" content="en-GB" />
	<meta name="title" content="Welcome to Te Contei" />
	<meta name="description" content="Te Contei restaurant template demo." />

	<title>我的收藏</title>
	
	<link href="favicon.ico" rel="shortcut icon" />


	<link rel="stylesheet" href="css/template.css" media="screen" />
	<link rel="stylesheet" href="css/colorbox.css" />
	<link rel="stylesheet" href="css/options.css" /> 
	
	<noscript>
		<style>
		#nav li:hover > ul, #nav li ul li:hover > ul,.sidebar ul.menu li:hover > ul, .sidebar ul.menu ul li:hover > ul{display: block;}
		</style>
	</noscript>

	<script src="js/scripts.js"></script>
	
	<script>	
		jQuery(function(){

			jQuery("#content-block").preloader({
				delay: 100
			});
						
			jQuery('.jquery-menu').enhanceMenu({
				effect: 'slide',
				duration: 200,
				delayIn: 100,
				delayOut: 100			
			});
			
		});
	</script>
	
</head>

<!--[if IE 7 ]>    <body class="ie7 ie"> <![endif]--> 
<!--[if IE 8 ]>    <body class="ie8 ie"> <![endif]--> 
<!--[if !IE]><!--> <body> <!--<![endif]-->

	<div id="headercloth"></div>

	<header id="header" class="clearfix">
		<div class="wrap">
	
			

						
			
			
		</div>
	</header>

	<div class="clear"></div>
	<div id="carte">
		<div id="carte-top" class="wrap"></div>
		<div id="content-block" class="wrap">

			<div class="separator top-separator content left"></div>
			<div class="separator top-separator content right"></div>
			
			<div id="main" class="content fullwidth">
				
				<h1 class="article-title">我的收藏</h1>

		
				<span id="txt"></span>
				
				<div class="gallery">
					<ul class="clearfix">
						<li>
							<a href=<%=href[0]%> rel="lightbox" title=<%=dn[0]%>>
							<img width="192" height="130" src=<%=img[0]%> title=<%=dn[0]%> alt="ImageTitle" id="img0"/></a>
						</li>
						
						<li>
							<a href=<%=href[1]%> rel="lightbox" title=<%=dn[1]%>>
							<img width="192" height="130" src=<%=img[1]%> title=<%=dn[1]%> alt="ImageTitle" id="img1"/></a>
						</li>
						
						<li>
							<a href=<%=href[2]%> rel="lightbox" title=<%=dn[2]%>>
							<img width="192" height="130" src=<%=img[2]%> title=<%=dn[2]%> alt="ImageTitle" id="img2"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[3]%> rel="lightbox" title=<%=dn[3]%>>
							<img width="192" height="130" src=<%=img[3]%> title=<%=dn[3]%> alt="ImageTitle" id="img3"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[4]%> rel="lightbox" title=<%=dn[4]%>>
							<img width="192" height="130" src=<%=img[4]%> title=<%=dn[4]%> alt="ImageTitle" id="img4"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[5]%> rel="lightbox" title=<%=dn[5]%>>
							<img width="192" height="130" src=<%=img[5]%> title=<%=dn[5]%> alt="ImageTitle" id="img5"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[6]%> rel="lightbox" title=<%=dn[6]%>>
							<img width="192" height="130" src=<%=img[6]%> title=<%=dn[6]%> alt="ImageTitle" id="img6"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[7]%> rel="lightbox" title=<%=dn[7]%>>
							<img width="192" height="130" src=<%=img[7]%> title=<%=dn[7]%> alt="ImageTitle" id="img7"/></a>
						</li>

						
						<li>
                                                        <a href=<%=href[8]%> rel="lightbox" title=<%=dn[8]%>>
							<img width="192" height="130" src=<%=img[8]%> title=<%=dn[8]%> alt="ImageTitle" id="img8"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[9]%> rel="lightbox" title=<%=dn[9]%>>
							<img width="192" height="130" src=<%=img[9]%> title=<%=dn[9]%> alt="ImageTitle" id="img9"/></a>
						</li>
						
						<li>
                                                        <a href=<%=href[10]%> rel="lightbox" title=<%=dn[10]%>>
                                                        <img width="192" height="130" src=<%=img[10]%> title=<%=dn[10]%> alt="ImageTitle" id="img10"/></a>
						</li>
						
						<li>
                                                    <a href=<%=href[11]%> rel="lightbox" title=<%=dn[11]%>>
							<img width="192" height="130" src=<%=img[11]%> title=<%=dn[11]%> alt="ImageTitle" id="img11"/></a>
						</li>
					</ul>
					
				</div>

				
				
				
			</div><!-- end main -->
			
			
			
						
		</div><!-- end #content-block -->
		
		<div id="carte-bottom" class="clear wrap"></div>
	</div><!-- end #carte -->
	
	<footer id="footer" class="dark-zone">
			
		<div id="fmodules" class="wrap">

			
			
			
			
			
			
			
			
			<div class="clear"></div>
		</div><!-- end fmodules -->
					
		<div id="footer-info">
			<div class="wrap relative">
				
				
									
			
				
			</div>
		</div><!-- end footer-info -->
		
	</footer><!-- end footer -->
	
	
	<script src="js/jquery.colorbox-min.js"></script>
	<script src="js/jquery.validity.pack.js"></script>

	<script src="js/jquery.nivo.slider.pack.js"></script>
	
	<script>
	jQuery(function(){
		captions();
		zebratables();
		hoverTables();
		pullquote();

		jQuery("a[rel*='lightbox']").colorbox({
			'opacity' : .5
		});

		jQuery.validity.setup({ outputMode:"modal" });
		
		var form = jQuery('form.form-validate');
		if( form.length > 0 ){
			// A general validation for forms
			form.validity(function(){
				jQuery('input.required').require();
				jQuery('textarea.required').require();
				jQuery('input[type="email"]').require().match('email');
				jQuery('input.required[type="url"]').require().match('url');
				jQuery('input[type="password"]').equal();
			});
		};
		
		fades();
		inputValues();
	});
	
	jQuery(window).load(function(){
	
		jQuery('#slider').nivoSlider({
			effect : 			'fade',
			animSpeed : 		500, 	// Slide transition speed
			pauseTime : 		3000, 	// How long each slide will show
			captionOpacity : 	0.8, 	// Universal caption opacity
			prevText : 			'', 	// Prev directionNav text
			nextText : 			'', 	// Next directionNav text
			controlNav : 		false 	// 1,2,3... navigation
		});
	});
	</script>

</body>
</html>