
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="css/font-awesome.min.css" type="text/javascript" rel="stylesheet">
        <link href="css/bootsnav.css" type="text/css" rel="stylesheet">
        <link href="css/normalize.css" type="text/css" rel="stylesheet">
        <link href="css/css.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/bootsnav.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/TweenLite/TweenLite.min.js"></script>
        <script src="js/TweenLite/EasePack.min.js"></script>
        <script src="js/TweenLite/rAF.js"></script>
        
        
  
        <script type="text/javascript">
            
        $(function(){
	$("#username").blur(function(){
        $.ajax(
	{  url:"checkname.jsp?username="+$("#username").val(),
		success:function(result){
	     if(result.trim()==="true"){
                    $("#txt").html("");
                    $("#submitbtn").attr("disabled",false);
		  }else{
                    $("#txt").html("<font size=3 color=red face=楷体>该账户不存在，请重新输入！</font>");
                    $("#submitbtn").attr("disabled",true);
                }
	         }
	     });
      });
  })
  </script>
  <script type="text/javascript">
        $(function(){
	$("#password").blur(function(){
        $.ajax(
	{  url:"checkpassword.jsp?password="+$("#password").val()+"&username="+$("#username").val(),
		success:function(result){
	      if(result.trim()==="true"){
                    $("#txt1").html("");                  
                    $("#submitbtn").attr("disabled",false);
                    
		  }
                else if($("#password").val()===""){
                    $("#txt1").html("<font size=3 color=red face=楷体>请输入密码！</font>");
                    $("#submitbtn").attr("disabled",true);
                }
                else{
                    $("#txt1").html("<font size=3 color=red face=楷体>密码错误，请重新输入！</font>");
                    $("#submitbtn").attr("disabled",true);
                }
	         }
	     });
      });
  })
        function onInput() {
          console.log("正在输入...");
          document.getElementById("submitbtn").disabled=false;
        }
  </script>
 
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录</title>
    </head>
        <body class="logobg_style">
        <div id="large-header" class="large-header login-page">
        <canvas id="demo-canvas" width="1590" height="711"></canvas>
        <div class="login-form">
        <div class="login-content">
        <h1 class="title_name">账户登录</h1>
        <form method="post" role="form" id="form_login" class="login_padding" action="list.action">
        <div class="form-group clearfix">
        <div class="input-group">
	<div class="input-group-addon">
	<i class="icon_user"></i>
	</div>
        
	<input type="text" class="form-control" name="username" id="username" placeholder="用户名" autocomplete="off" onblur="checkname();" >
	
        </div>
        <span id="txt"></span><br>
	</div>
        
	<div class="form-group clearfix">
        
	<div class="input-group">
        <div class="input-group-addon">
	<i class="icon_password"></i>
	</div>

	<input type="password" class="form-control" name="password" id="password" placeholder="密码" autocomplete="off" onblur="checkpassword();" oninput="onInput()">
	</div>
        <span id="txt1"></span><br>
	</div>
	<div class=" textright"><a href="forgetpwd.html" class="forget">忘记密码？</a></div>
        <div class="tishi"></div>
	<div class="form-group">
        <input  type="submit" value="登录" class="btn btn-danger btn-block btn-login" id="submitbtn" disabled="true">
	<i class="fa fa-sign-in"></i>
	</input>
	</div>
        <div class=" textright"><a href="registered.html" class="forget">立即注册</a></div>
	<div class="form-group"></div>
        </form>
  	</div>
  	</div>
  	</div>
  
</body>
</html>
