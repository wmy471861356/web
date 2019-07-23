<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>健康数据</title>
	
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
</head>

<body id="application">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12  mx-auto">
                <header class="mt-5 mb-5 text-center">
                    <h3>健康测试</h3>
                    <p class="tm-form-description">输入你的信息，获取你的健康系数</p>
                </header>
                <form action="" method="post" enctype="multipart/form-data" class="tm-form-white tm-font-big">
                    <div class="tm-bg-white tm-form-pad-big">
                        <div class="form-group mb-5">
                            <label for="name" class="black-text mb-4 big">你的年龄</label>
                            <input id="age" name="age" type="text" class="validate tm-input-white-bg" autofocus required>
                        </div>
                        <div class="form-group mb-5">
                            <label for="email" class="black-text mb-4 big">你的身高(米)</label>
                            <input id="height" name="height" type="text" class="validate tm-input-white-bg" required>
                        </div>
                        <div class="form-group mb-5">
                            <label for="address1" class="black-text mb-4 big">你的体重(公斤)</label>
                            <input id="weight" name="weight" type="text" class="validate tm-input-white-bg mb-4" required>
                        
                        </div>
                       
                        <div class="form-group mb-5">
                            <label for="gender" class="black-text mb-4 big">您的性别</label>
                            <div>
                                <label class="mr-4">
                                    <input id="sex" class="with-gap" name="gender" type="radio" value="1" default="0" checked/>
                                    <span>男</span>
                                </label>
                                <label>
                                    <input class="with-gap" name="gender" type="radio" value="0" />
                                    <span>女</span>
                                </label>
                            </div>
                        </div>
                        
                        

                        <div class="form-group">
                            <label for="message" class="black-text mb-4 big" vertical-align:middle display:inline-block>您的健康系数</label>
                            <textarea class="p-3" name="message" id="message" cols="30" rows="6"></textarea><br><br><br>
                             <div class="text-center mt-5">                            
                                <a href="javascript:void(0);" class="waves-effect btn-large btn-large-white" id="sBtn" >提交</a>
                             </div>
                        </div>

                    </div>
                   
                </form>
            </div>
        </div>
        
    </div>

    
</body>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>
   <script type="text/javascript">
       $(function(){
           
           $(document).keydown(function (event) {
                if (event.keyCode == 13) {
                    $('#sBtn').triggerHandler('click');            
                     }
                });
           $("#sBtn").click(function(){              
                var height=$("#height").val();
                var age=$("#age").val();                
                var weight=$("#weight").val();
                var sex=$('input:radio:checked').val();
                $("#message").empty();
                var obj=document.getElementById("message");
                if(height==""||age==""||weight==""){
                    str="信息填写不全，无法为您计算。"
                    obj.append(str);
                }
                else{
                    var BMI=(weight/(height*height)).toFixed(3);
                    var BF=(1.2*BMI+0.23*age-5.4-sex*10.8).toFixed(3);
                    str="您的BMI指数："+BMI+"\n(<=18.4:偏瘦  18.5～23.9:正常  \n24.0～27.9：过重  >=28.0：肥胖)"+"\n\n您的体脂率："+BF+"%"+"\n正常值：女性20%～25%，男性15%～18%";                               
                    obj.append(str);
                }           
           })
       })
   </script>
</html>