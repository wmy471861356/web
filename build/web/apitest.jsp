<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">       
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>>
</head>

<body>
    <input type="text" id="txt" placeholder="请输入你所在的城市"/>
    <button id="sub">提交</button><br>
    
        <span id="date"></span><br>
        <span id='city'></span><br>
        <span id='air_level'></span><br>
        <span id='tips'></span><br>
        <span id='time'></span>
    
    
</body>
<script type="text/javascript">
         $(document).keydown(function (event) {
                if (event.keyCode == 13) {
                    $('#sub').triggerHandler('click');            
                     }
                });
        var RUL_list;
        $("#sub").click(function(){  
           
        RUL_list='http://hd215.api.yesapi.cn/?service=App.Common_Weather.LiveWeather&city='+encodeURI($("#txt").val())+'&app_key=B50B2DB6C0835FBC1EB2D5BC2DFC7941';
         
         
	$.ajax({
        type:'post',
        url: RUL_list,
        dataType : 'json',
        async : true, //默认为true 异步
        success:function(data){   
            console.log(data.data);
            if(data.ret == '200'&&data.data.weather!='没有该地区数据'){
//              $.each(data.data,function(key,arr){ 
                            
                            $("#city").html("<font size=3 color=black face=楷体>你的城市："+data.data.weather.city+"</font>");
		            $("#date").html("<font size=3 color=black face=楷体>今天是："+data.data.weather.date+"</font>");
                            $("#air_level").html("<font size=3 color=black face=楷体>天气："+data.data.weather.weather+"</font>");
                            $("#tips").html("<font size=3 color=black face=楷体>空气质量："+data.data.weather.air_level+"</font>");
                            $("#time").html("<font size=3 color=black face=楷体>信息来源时间："+data.data.weather.time+"</font>");      
		            		           
//		          });
            }else if(data.data.weather=='没有该地区数据'){
            	
                $("#city").html("<font size=3 color=black face=楷体>没有该地区数据</font>");
            	$("#date").html("<font size=3 color=black face=楷体> </font>");
                $("#air_level").html("<font size=3 color=black face=楷体> </font>");
                $("#tips").html("<font size=3 color=black face=楷体> </font>");
                $("#time").html("<font size=3 color=black face=楷体> </font>");    
            	
            }
        },
        error:function(data){
             alert(data.ret);	
        }
         })
     })
</script>
</html>