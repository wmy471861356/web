package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.*;
import java.sql.*;

public final class calorie_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    \n");
      out.write("    <title>卡路里计算</title>\n");
      out.write("\t\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/materialize.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/tooplate.css\">\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/vue/dist/vue.js\"></script>\n");
      out.write("    <style>\n");
      out.write("        #gg > table {\n");
      out.write("            font-size: 16px;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            border-collapse: separate;\n");
      out.write("            border-spacing: 0;\n");
      out.write("            border: 2px #000;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        table thead tr,table tbody tr {\n");
      out.write("            height: 50px;\n");
      out.write("            line-height: 50px;\n");
      out.write("            /*background-color: pink;*/\n");
      out.write("        }\n");
      out.write("        table tr th:first-child,table tr td:first-child {/*设置table左边边框*/\n");
      out.write("            border-left: 2px solid #eaeaea;\n");
      out.write("        }\n");
      out.write("        table tr th:last-child,table tr td:last-child {/*设置table右边边框*/\n");
      out.write("            border-right: 2px solid #eaeaea;\n");
      out.write("        }\n");
      out.write("        table tr td:first-child,\n");
      out.write("        table tr td:nth-child(2),\n");
      out.write("        table tr td:nth-child(3),\n");
      out.write("        table tr td:last-child{/*设置table表格每列底部边框*/\n");
      out.write("            border-bottom: 2px solid #eaeaea;\n");
      out.write("        }\n");
      out.write("        /*table tr:last-child td:first-child,\n");
      out.write("        table tr:last-child td:nth-child(2),\n");
      out.write("        table tr:last-child td:nth-child(3),\n");
      out.write("        table tr:last-child td:last-child{/!*设置table表格最后一列底部边框*!/\n");
      out.write("            border-bottom: 2px solid #000;\n");
      out.write("        }*/\n");
      out.write("        table tr th {\n");
      out.write("            background: #eaeaea;\n");
      out.write("        }\n");
      out.write("        table tr:first-child th:first-child {\n");
      out.write("            border-top-left-radius: 12px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        table tr:first-child th:last-child {\n");
      out.write("            border-top-right-radius: 12px;\n");
      out.write("        }\n");
      out.write("        table tr:last-child td:first-child {\n");
      out.write("            border-bottom-left-radius: 12px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        table tr:last-child td:last-child {\n");
      out.write("            border-bottom-right-radius: 12px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<style type=\"text/css\">  div.RoundedCorner{background: #9BD1FA}  b.rtop, b.rbottom{display:block;background: #FFF}  b.rtop b, b.rbottom b{display:block;height: 1px;overflow:   hidden; background: #9BD1FA}  b.r1{margin: 0 5px}  b.r2{margin: 0 3px}  b.r3{margin: 0 2px}  b.rtop b.r4, b.rbottom b.r4{margin: 0 1px;height: 2px}  </style>  \n");
      out.write(" \n");
      out.write("<body id=\"survey\" class=\"font-weight-light\">\n");
      out.write("    <div class=\"container tm-container-max-800\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-12\">\n");
      out.write("                <header class=\"mt-5 mb-5 text-center\">\n");
      out.write("                    <div class=\"tm-home-left\" style=\"margin: 0 auto\">\n");
      out.write("                    <h1 class=\"tm-site-title\" >燃烧你的<br>卡路里！</h1>\n");
      out.write("                    <p class=\"tm-form-description\"><font size=\"5\" color=\"white\">想知道自己每餐摄入多少热量？快来搭配一下！</font></p>\n");
      out.write("                    </div>\n");
      out.write("                </header>\n");
      out.write("     \n");
      out.write("    <div id=\"gg\">\n");
      out.write("    <table class=\"table\" width=\"800\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("        <thead class=\"table_head\">\n");
      out.write("    <tr>\n");
      out.write("        <th style=\"text-align:center;vertical-align:middle;\">序号</th>\n");
      out.write("        <th style=\"text-align:center;vertical-align:middle;\">食品名称</th>\n");
      out.write("        <th style=\"text-align:center;vertical-align:middle;\">热量(每100克)</th>\n");
      out.write("        <th style=\"text-align:center;vertical-align:middle;\">数量</th>\n");
      out.write("        <th style=\"text-align:center;vertical-align:middle;\">操作</th>\n");
      out.write("    </tr>\n");
      out.write("    <tr v-for=\"food in Food_Json\">\n");
      out.write("        <td style=\"text-align:center;vertical-align:middle;\">{{ food.id }}</td>\n");
      out.write("        <td style=\"text-align:center;vertical-align:middle;\">{{ food.name }}</td>\n");
      out.write("        <td style=\"text-align:center;vertical-align:middle;\">{{ food.calorie }}</td>\n");
      out.write("        <td style=\"text-align:center;vertical-align:middle;\">        \n");
      out.write("            <button v-bind:disabled=\"food.count === 0\" v-on:click=\"food.count-=1\" class=\"btn btn-danger\" style=\"height:20px; width:5px\">\n");
      out.write("                <p style='line-height:20px; '>-</p>\n");
      out.write("            </button>\n");
      out.write("        {{ food.count }}\n");
      out.write("        <button v-on:click=\"food.count+=1\" class=\"btn btn-success\"  style=\"height:20px; width:5px; \">\n");
      out.write("             <p style='line-height:20px; padding-left:0px'>+</p>\n");
      out.write("        </button>      \n");
      out.write("        </td>\n");
      out.write("        <td style=\"text-align:center;vertical-align:middle;\">\n");
      out.write("            <button v-on:click=\"food.count=0\" class=\"btn btn-success-alt\">清空</button>\n");
      out.write("        </td>\n");
      out.write("            </tr>\n");
      out.write("            <td style=\"text-align:center;vertical-align:middle;\" colspan=\"5\"><font size=\"5\" >总热量：{{totalCalorie()}}大卡 </font></td>\n");
      out.write("            </table>\n");
      out.write("        \n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <br><br><br><br>                 \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("    <script src=\"js/jquery-3.2.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"js/materialize.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('select').formSelect();\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("       <script type=\"text/javascript\">\n");
      out.write("        var food = new Vue({\n");
      out.write("        el: '#gg',\n");
      out.write("        data: {\n");
      out.write("            Food_Json: [\n");
      out.write("                {\n");
      out.write("                 id: 1,\n");
      out.write("                 name: '鸡蛋',\n");
      out.write("                 calorie: 144,\n");
      out.write("                 count: 0\n");
      out.write("                     },\n");
      out.write("              {\n");
      out.write("                id: 2,\n");
      out.write("                name: '猪肉(瘦)',\n");
      out.write("                calorie: 143,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 3,\n");
      out.write("                name: '牛肉',\n");
      out.write("                calorie: 125,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              \n");
      out.write("              {\n");
      out.write("                id: 4,\n");
      out.write("                name: '羊肉',\n");
      out.write("                calorie: 203,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 5,\n");
      out.write("                name: '鱼肉',\n");
      out.write("                calorie: 118,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 6,\n");
      out.write("                name: '米饭',\n");
      out.write("                calorie: 116,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 7,\n");
      out.write("                name: '面条（煮）',\n");
      out.write("                calorie: 110,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 8,\n");
      out.write("                name: '馒头',\n");
      out.write("                calorie: 223,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 9,\n");
      out.write("                name: '纯牛奶',\n");
      out.write("                calorie: 54,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 10,\n");
      out.write("                name: '汉堡',\n");
      out.write("                calorie: 292,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 11,\n");
      out.write("                name: '豆腐',\n");
      out.write("                calorie: 84,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 12,\n");
      out.write("                name: '苹果',\n");
      out.write("                calorie: 49,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 13,\n");
      out.write("                name: '面包',\n");
      out.write("                calorie: 313,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 14,\n");
      out.write("                name: '饺子',\n");
      out.write("                calorie: 231,\n");
      out.write("                count: 0\n");
      out.write("              },\n");
      out.write("              {\n");
      out.write("                id: 15,\n");
      out.write("                name: '冰淇淋',\n");
      out.write("                calorie: 127,\n");
      out.write("                count: 0\n");
      out.write("              }\n");
      out.write("            ]\n");
      out.write("\n");
      out.write("  },\n");
      out.write("  methods:{\n");
      out.write("    totalCalorie : function(){\n");
      out.write("      var totalP = 0;\n");
      out.write("      for (var i = 0,len = this.Food_Json.length;i<len;i++) {\n");
      out.write("        totalP+=this.Food_Json[i].calorie*this.Food_Json[i].count;\n");
      out.write("      }\n");
      out.write("      return totalP;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("  }\n");
      out.write("})\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
