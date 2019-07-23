<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>合理膳食</title>
	
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
</head>

<body id="register">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <header class="mb-5">
                    <h3 class="mt-0 white-text">合理膳食</h3>
                    <p class="grey-text mb-4">本页面包含膳食搭配、卡路里计算以及食谱查询三个模块</p>
                    <p class="grey-text">用户可以通过本页面查询到健康的膳食搭配，后即可查询食谱做法，最后若用户需要还可以查询此次餐食卡路里的摄入。
                    </p>
                </header>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <form action="recipies.html" method="post" class="tm-signup-form">
                    <div class="text-right mt-4">
                        <button type="submit" class="waves-effect btn-large btn-large-white px-4 tm-border-radius-0">今日膳食推荐</button>
                    </div>
                </form>
                <form action="menu.jsp" method="post" class="tm-signup-form">
                    <div class="text-right mt-4">
                        <button type="submit" class="waves-effect btn-large btn-large-white px-4 tm-border-radius-0">食谱查询入口</button>
                    </div>
                </form>
                <form action="calorie.jsp" method="post" class="tm-signup-form">
                    <div class="text-right mt-4">
                        <button type="submit" class="waves-effect btn-large btn-large-white px-4 tm-border-radius-0">卡路里值计算</button>
                    </div>
                </form>
            </div>
        </div>
        
    </div>

    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>
</body>

</html>