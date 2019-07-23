<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
  
<!DOCTYPE html>

<html lang="en-gb">

<head>
	<!--[if lt IE 7]><style type="text/css">html{display:none;}</style><script>alert('Please get a new browser!');</script><![endif]-->
	<script src="js/jquery.min.js"></script>
	<script>!window.jQuery && document.write('<script src="js/jquery.1.5.2.js"><\/script>')</script>

	<script>
		jQuery.noConflict();
	</script>
	
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="index, follow" />
	<meta name="keywords" content="restaurant, cafe, template, coffee shop, te contei" />
	<meta name="rights" content="Demente Design" />
	<meta name="language" content="en-GB" />
	<meta name="title" content="Welcome to Te Contei" />
	<meta name="description" content="Te Contei restaurant template demo." />
        <meta http-equiv="Access-Control-Allow-Origin" content="*" />
        <meta name="viewport" content="width=device-width, initial-scale=1">       
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<title>查询菜谱</title>
	
	<link href="favicon.ico" rel="shortcut icon" />
            

	<link rel="stylesheet" href="css/template.css" media="screen" />
	<link rel="stylesheet" href="css/colorbox.css" />
	<link rel="stylesheet" href="css/options.css" /> 
  
        <script src="js/scripts.js"></script>
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
			    <input id="txt" name="searchword" maxlength="100" class="hidevalue search-field inputbox" type="search" size="150" placeholder="输入你想查的菜名" />
			    <input type="submit" value="" class="search-button-image" id="sub"/>
                            <input type="submit" value="收藏" class="" id="collect"/>
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
                                                            <a rel="lightbox[1]" href="images/null.jpg" title="Mauris ornare" id="img1" >
                                                                <img src="images/eye.png" alt="" class="icon"/></a>查看图示
							</td>
							

						</tr>
						
						<tr class="dmtmenu-item">
							<td>
								<h5><span id="step2">
								</span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Vitae ornare" id="img2">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
							
						</tr>
						
						<tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step3">
								</span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Vitae ornare" id="img3">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step4">
								</span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Vitae ornare" id="img4">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step5">
                                                            </span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Vitae ornare" id="img5">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
                                                        
						</tr>

					</table>

				</div>
				
			</div><!-- end main -->
	
			<div class="sidebar content">
                               
				<div class="module">
                                     <table class="fulltable">
					<tr class="dmtmenu-item">
                                             <br><br>
							<td>    
                                                           
								<h5><span id="step6">
								</span></h5>
                                                                <a rel="lightbox[1]" href="images/null.jpg" title="Convallis ultricies" id="img6">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
                                                        
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
								<h5><span id="step7">
								</span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Convallis ultricies" id="img7">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
						</tr>
                                                <tr class="dmtmenu-item">
							<td>
                                                            <h5><span id="step8">
                                                            </span></h5>
								<a rel="lightbox[1]" href="images/null.jpg" title="Vitae ornare" id="img8">
                                                                <img src="images/eye.png" alt="" class="icon" /></a>查看图示
							</td>
      
						</tr>
                                               </table>
				</div>
				<br>
				<div class="separator clear"></div>
				
				<div class="module">
					<h3>今日推荐</h3>
					<nav class="clearfix">

						<div class="cols-2 col-first">
							<div>
								<ul class="menu">
									<li><a href="#" id="breakfast">Breakfast</a></li>
									<li><a href="#" id="lunch">Lunch</a></li>
									<li><a href="#" id="dinner">Dinner</a></li>
								</ul>

							</div>
						</div>
						<div class="cols-2 col-last">
							<div>
								<ul class="menu">
									<li><a href="#" id="desserts">Desserts</a></li>
									<li><a href="#" id="drinks">Drinks</a></li>
								</ul>

							</div>
						</div>
					</nav>
				</div>
				
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
	
	
	
	
	<script src="js/jquery.colorbox-min.js"></script>
	<script src="js/jquery.validity.pack.js"></script>

	<script src="js/jquery.nivo.slider.pack.js"></script>
	
	
        <script type="text/javascript">
         $(document).keydown(function (event) {
                if (event.keyCode == 13) {
                    $('#sub').triggerHandler('click');            
                     }
                });
        var RUL_list;
        $("#sub").click(function(){   
            
            if ($("#txt").val() == "") {
                      $("#title").html("<font size=3 color=red face=楷体>您还未输入任何菜名！</font>");
                      $("span").empty();
                      $("#txt").focus();
                        return;
	        }    
            else{
                $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })}
     
     })
     $("#collect").click(function(){          
                    if ($("#txt").val() == "") {
                      alert("未输入任何菜");
                        $("#txt").focus();
                        return;
	            }                   
                   else{
                    $.ajax(
                    {  
                        type:"post",
                        url:"collect.jsp?dishname="+$.trim($("#txt").val()),
                        success:function(result){                    		
                        if(result.trim()==="true"){
                          alert("收藏成功!");
                      }
                    else{
                        alert("您已收藏过这道菜了！");
                        return false;
                }
	         }
	     
             });
             
            }
	          
                
		
                
      })
       $("#breakfast").click(function(){   
      var str=new Array('生煎包','蛋卷','葱油拌面','三明治','皮蛋瘦肉粥','葱花鸡蛋饼','盘丝饼','热干面','紫薯培根饼','司康饼');             
      var i=Math.round(Math.random()*10);
      $("#txt").attr('value',str[i]);  
      $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
    })   
    $("#drinks").click(function(){   
      var str=new Array('草莓牛奶冰咖啡','牛奶西米露','咖啡奶冻','咖啡小火锅','牛奶冰棍','牛奶冰淇淋','牛奶冻','焦糖玛奇朵','拿铁咖啡','摩卡冰淇淋');             
      var i=Math.round(Math.random()*10);
      $("#txt").attr('value',str[i]);  
      $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
    }) 
    $("#desserts").click(function(){   
      var str=new Array('杯子蛋糕','草莓蛋糕','华夫饼','草莓慕斯','巧克力布丁','咖啡冰淇淋','芋圆儿紫薯圆儿','芝士蛋糕','黑森林蛋糕','奥利奥');             
      var i=Math.round(Math.random()*10);
      $("#txt").attr('value',str[i]);  
      $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
    })   
   
    $("#dinner").click(function(){   
      var str=new Array('虾饺','鸡汤','地三鲜','酱油炒饭','冷面','煎饺','清蒸三文鱼片','油炸五香','可乐鸡翅','大头菜水饺');             
      var i=Math.round(Math.random()*10);
      $("#txt").attr('value',str[i]);  
      $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
    })  
    $("#lunch").click(function(){   
      var str=new Array('西冷牛排','牛肉汉堡','口水鸡','意大利面','海鲜炒饭','炸虾','梭子蟹炒年糕','BBQ香辣培根炒饭','鸡汤','海螺肉寿司卷');             
      var i=Math.round(Math.random()*10);
      $("#txt").attr('value',str[i]);  
      $.ajax({
                    type:"GET",
                    url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
                    dataType:"jsonp",  //数据格式设置为jsonp
                    jsonp:"callback",  //Jquery生成验证参数的名称
        
                     success:function(data){   
                         console.log(data.result);
                        if(data.resultcode == '200'){
                                $("span").empty(); 
                                $("#title").html("<font size=3 color=black face=楷体>你查询的菜是："+data.result.data[0].title+"</font>");
                                $("#tags").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"<br>调料："+data.result.data[0].burden+"</font>");            
                                $("#step1").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[0].step+"</font>"); 
                                $("#img1").attr("href",data.result.data[0].steps[0].img); 
                                $("#step2").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[1].step+"</font>");
                                $("#img2").attr("href",data.result.data[0].steps[1].img); 
                                $("#step3").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[2].step+"</font>");
                                $("#img3").attr("href",data.result.data[0].steps[2].img); 
                                $("#step4").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[3].step+"</font>");
                                $("#img4").attr("href",data.result.data[0].steps[3].img); 
                                $("#step5").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[4].step+"</font>");
                                $("#img5").attr("href",data.result.data[0].steps[4].img); 
                                $("#step6").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[5].step+"</font>");
                                $("#img6").attr("href",data.result.data[0].steps[5].img); 
                                $("#step7").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[6].step+"</font>");
                                $("#img7").attr("href",data.result.data[0].steps[6].img); 
                                $("#step8").html("<font size=3 color=black face=楷体>步骤"+data.result.data[0].steps[7].step+"</font>");
                                $("#img8").attr("href",data.result.data[0].steps[7].img); 
                            }
                            else{
                                $("#title").html("<font size=3 color=red face=楷体>未查询到您输入的菜名</font>");
                            }
                            },
        error:function(data){
             alert(data.resultcode);	
        }
         })
    })   
</script>
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
		userLinks();
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