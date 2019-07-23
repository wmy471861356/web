<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>卡路里计算</title>
	
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <style>
        #gg > table {
            font-size: 16px;
            text-align: center;
            margin: 0 auto;
            border-collapse: separate;
            border-spacing: 0;
            border: 2px #000;
        }

        table thead tr,table tbody tr {
            height: 50px;
            line-height: 50px;
            /*background-color: pink;*/
        }
        table tr th:first-child,table tr td:first-child {/*设置table左边边框*/
            border-left: 2px solid #eaeaea;
        }
        table tr th:last-child,table tr td:last-child {/*设置table右边边框*/
            border-right: 2px solid #eaeaea;
        }
        table tr td:first-child,
        table tr td:nth-child(2),
        table tr td:nth-child(3),
        table tr td:last-child{/*设置table表格每列底部边框*/
            border-bottom: 2px solid #eaeaea;
        }
        /*table tr:last-child td:first-child,
        table tr:last-child td:nth-child(2),
        table tr:last-child td:nth-child(3),
        table tr:last-child td:last-child{/!*设置table表格最后一列底部边框*!/
            border-bottom: 2px solid #000;
        }*/
        table tr th {
            background: #eaeaea;
        }
        table tr:first-child th:first-child {
            border-top-left-radius: 12px;
        }

        table tr:first-child th:last-child {
            border-top-right-radius: 12px;
        }
        table tr:last-child td:first-child {
            border-bottom-left-radius: 12px;
        }

        table tr:last-child td:last-child {
            border-bottom-right-radius: 12px;
        }

    </style>
</head>
<style type="text/css">  div.RoundedCorner{background: #9BD1FA}  b.rtop, b.rbottom{display:block;background: #FFF}  b.rtop b, b.rbottom b{display:block;height: 1px;overflow:   hidden; background: #9BD1FA}  b.r1{margin: 0 5px}  b.r2{margin: 0 3px}  b.r3{margin: 0 2px}  b.rtop b.r4, b.rbottom b.r4{margin: 0 1px;height: 2px}  </style>  
 
<body id="survey" class="font-weight-light">
    <div class="container tm-container-max-800">
        <div class="row">
            <div class="col-12">
                <header class="mt-5 mb-5 text-center">
                    <div class="tm-home-left" style="margin: 0 auto">
                    <h1 class="tm-site-title" >燃烧你的<br>卡路里！</h1>
                    <p class="tm-form-description"><font size="5" color="white">想知道自己每餐摄入多少热量？快来搭配一下！</font></p>
                    </div>
                </header>
     
    <div id="gg">
    <table class="table" width="800" cellspacing="0" cellpadding="0">
        <thead class="table_head">
    <tr>
        <th style="text-align:center;vertical-align:middle;">序号</th>
        <th style="text-align:center;vertical-align:middle;">食品名称</th>
        <th style="text-align:center;vertical-align:middle;">热量(每100克)</th>
        <th style="text-align:center;vertical-align:middle;">数量</th>
        <th style="text-align:center;vertical-align:middle;">操作</th>
    </tr>
    <tr v-for="food in Food_Json">
        <td style="text-align:center;vertical-align:middle;">{{ food.id }}</td>
        <td style="text-align:center;vertical-align:middle;">{{ food.name }}</td>
        <td style="text-align:center;vertical-align:middle;">{{ food.calorie }}</td>
        <td style="text-align:center;vertical-align:middle;">        
            <button v-bind:disabled="food.count === 0" v-on:click="food.count-=1" class="btn btn-danger" style="height:20px; width:5px">
                <p style='line-height:20px; '>-</p>
            </button>
        {{ food.count }}
        <button v-on:click="food.count+=1" class="btn btn-success"  style="height:20px; width:5px; ">
             <p style='line-height:20px; padding-left:0px'>+</p>
        </button>      
        </td>
        <td style="text-align:center;vertical-align:middle;">
            <button v-on:click="food.count=0" class="btn btn-success-alt">清空</button>
        </td>
            </tr>
            <td style="text-align:center;vertical-align:middle;" colspan="5"><font size="5" >总热量：{{totalCalorie()}}大卡 </font></td>
            </table>
        
            </div>
            </div>
        </div>
        <div>
            <br><br><br><br>                 
        </div>
    </div>
        
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>
       <script type="text/javascript">
        var food = new Vue({
        el: '#gg',
        data: {
            Food_Json: [
                {
                 id: 1,
                 name: '鸡蛋',
                 calorie: 144,
                 count: 0
                     },
              {
                id: 2,
                name: '猪肉(瘦)',
                calorie: 143,
                count: 0
              },
              {
                id: 3,
                name: '牛肉',
                calorie: 125,
                count: 0
              },
              
              {
                id: 4,
                name: '羊肉',
                calorie: 203,
                count: 0
              },
              {
                id: 5,
                name: '鱼肉',
                calorie: 118,
                count: 0
              },
              {
                id: 6,
                name: '米饭',
                calorie: 116,
                count: 0
              },
              {
                id: 7,
                name: '面条（煮）',
                calorie: 110,
                count: 0
              },
              {
                id: 8,
                name: '馒头',
                calorie: 223,
                count: 0
              },
              {
                id: 9,
                name: '纯牛奶',
                calorie: 54,
                count: 0
              },
              {
                id: 10,
                name: '汉堡',
                calorie: 292,
                count: 0
              },
              {
                id: 11,
                name: '豆腐',
                calorie: 84,
                count: 0
              },
              {
                id: 12,
                name: '苹果',
                calorie: 49,
                count: 0
              },
              {
                id: 13,
                name: '面包',
                calorie: 313,
                count: 0
              },
              {
                id: 14,
                name: '饺子',
                calorie: 231,
                count: 0
              },
              {
                id: 15,
                name: '冰淇淋',
                calorie: 127,
                count: 0
              }
            ]

  },
  methods:{
    totalCalorie : function(){
      var totalP = 0;
      for (var i = 0,len = this.Food_Json.length;i<len;i++) {
        totalP+=this.Food_Json[i].calorie*this.Food_Json[i].count;
      }
      return totalP;
    }

  }
})
</script>
</body>

</html>