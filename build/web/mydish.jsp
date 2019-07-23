<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<%
    String dn=request.getParameter("dishname");
%>
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
	<meta name="title" content="Welcome to Menu" />
        
	<title>查询菜谱</title>
	
	

	
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

			<div id="main" class="content">	
				<div class="small carte-footer">
					
				<div class="search-wrap">                  
                                    <input id="txt" name="searchword" maxlength="100" class="hidevalue search-field inputbox" type="search" size="150" value=<%=dn%>>			    
                            <br>
                            
			</div>
			<br>
					
				</div>
				<div class="dmtmenu dmtmenu-category">
				
					

						
					

					<table class="fulltable">
					
						<tr class="dmtmenu-item">
							<td>
                                                            <br>
								<h5><span id="title"></span></h5>

								<details class="small">
									<span id="tags"></span>
								</details>
							</td>				
						</tr>
						
						<tr class="dmtmenu-item">
								<td>          
								<h5><span id="step1">
								</span></h5>
                                                            <a target="blank" href="images/null.jpg" title="图示" id="img1" >
                                                                <img src="images/eye.png" alt="" class="icon"/></a>查看图示
							</td>

						</tr>
						
						<tr class="dmtmenu-item">
							<td>
								<h5><span id="step2">
								</span></h5>
								<a target="blank" href="images/null.jpg" title="图示" id="img2">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>				
						</tr>
						
						<tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step3">
								</span></h5>
								<a target="blank" href="images/null.jpg" title="图示"  id="img3">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step4">
								</span></h5>
								<a target="blank" href="images/null.jpg" title="图示" id="img4">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step5">
                                                            </span></h5>
								<a target="blank" href="images/null.jpg" title="图示" id="img5">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
                                                        
						</tr>
					</table>

				</div>
				
			</div><!-- end main -->
	
			<div class="sidebar content">

				<div class="module">
                                    <div class="dmtmenu dmtmenu-category">
                                     <table class="fulltable">
					<tr class="dmtmenu-item">
                                             <br><br>
							<td>    
                                                           
								<h5><span id="step6">
								</span></h5>
                                                                <a target="blank" href="images/null.jpg" title="图示" id="img6">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
                                                        
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
								<h5><span id="step7">
								</span></h5>
								<a target="blank" href="images/null.jpg"  title="图示" id="img7">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step8">
                                                            </span></h5>
                                                            <a href="images/null.jpg" title="图示" id="img8" target="blank">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
      
						</tr>
                                               </table>
				</div>
                                    </div>
				<br>
				
                           
			
				
				
				
			</div><!-- end sidebar -->
						
						
			<div class="clear left content">
				<div class="separator"></div>

				<div class="small carte-footer">
					
				</div>
			</div>
			
			<div class="right content">
				<div class="separator"></div>
				
				
			</div>			
		</div><!-- end #content-block -->
		
		
	</div><!-- end #carte -->
	
	
	
	
	
	<script src="js/jquery.validity.pack.js"></script>

	<script src="js/jquery.nivo.slider.pack.js"></script>
	
	<script>
	jQuery(function(){
		captions();
		zebratables();
		hoverTables();
		pullquote();

		

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
        <script type="text/javascript">
        
       
        jQuery(window).ready(function(){   
               
               jQuery.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI(jQuery("#txt").val())+'&dtype=&pn=&rn=&key=a09e6f8ab2546bb80f9ee7036e474e1d', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                        console.log(data.result);
                        if(data.resultcode == '200'){
                               jQuery("span").empty(); 
                               jQuery("#title").html("<font size=3 color=black face=楷体>"+data.result.data[0].title+"的做法：</font>");
                               jQuery("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                               jQuery("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                               jQuery("#img1").attr("href",data.result.data[0].steps[0].img); 
                               jQuery("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                               jQuery("#img2").attr("href",data.result.data[0].steps[1].img); 
                               jQuery("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                               jQuery("#img3").attr("href",data.result.data[0].steps[2].img); 
                               jQuery("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                               jQuery("#img4").attr("href",data.result.data[0].steps[3].img); 
                               jQuery("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                               jQuery("#img5").attr("href",data.result.data[0].steps[4].img); 
                               jQuery("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                               jQuery("#img6").attr("href",data.result.data[0].steps[5].img); 
                               jQuery("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                               jQuery("#img7").attr("href",data.result.data[0].steps[6].img); 
                               jQuery("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                               jQuery("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                jQuery("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
     
     })
     
       
</script>
</body>
</html>