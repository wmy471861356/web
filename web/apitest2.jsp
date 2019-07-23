<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
  
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Access-Control-Allow-Origin" content="*" />
        <meta name="viewport" content="width=device-width, initial-scale=1">       
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
</head>

<body>
    <input type="text" id="txt" placeholder="请输入你的菜"/><br>
    <button id="sub">提交</button><br>
    <button id="collect">收藏</button><br>
    <a href="" id="goto">查看我收藏的菜谱</a><br>
        <span id="title"></span><br>
        <span id='ingredients'></span><br>
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
	$.ajax({
        type:"GET",
        url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($("#txt").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接
        dataType:"jsonp",  //数据格式设置为jsonp
        jsonp:"callback",  //Jquery生成验证参数的名称
        
        success:function(data){   
            console.log(data.result);
            if(data.resultcode == '200'){
                 $("#title").html("<font size=3 color=black face=楷体>你的菜："+data.result.data[0].title+"</font>");
                 $("#ingredients").html("<font size=3 color=black face=楷体>需要的食材："+data.result.data[0].ingredients+"</font>");            
//                  
            }
        },
        error:function(data){
             alert(data.resultcode);	
        }
         })
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
</script>
</html>