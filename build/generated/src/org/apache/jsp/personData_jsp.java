package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.*;
import java.sql.*;

public final class personData_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>健康数据</title>\n");
      out.write("\t\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/materialize.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/tooplate.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"application\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12  mx-auto\">\n");
      out.write("                <header class=\"mt-5 mb-5 text-center\">\n");
      out.write("                    <h3>健康测试</h3>\n");
      out.write("                    <p class=\"tm-form-description\">输入你的信息，获取你的健康系数</p>\n");
      out.write("                </header>\n");
      out.write("                <form action=\"\" method=\"post\" enctype=\"multipart/form-data\" class=\"tm-form-white tm-font-big\">\n");
      out.write("                    <div class=\"tm-bg-white tm-form-pad-big\">\n");
      out.write("                        <div class=\"form-group mb-5\">\n");
      out.write("                            <label for=\"name\" class=\"black-text mb-4 big\">你的年龄</label>\n");
      out.write("                            <input id=\"age\" name=\"age\" type=\"text\" class=\"validate tm-input-white-bg\" autofocus required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-5\">\n");
      out.write("                            <label for=\"email\" class=\"black-text mb-4 big\">你的身高(米)</label>\n");
      out.write("                            <input id=\"height\" name=\"height\" type=\"text\" class=\"validate tm-input-white-bg\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group mb-5\">\n");
      out.write("                            <label for=\"address1\" class=\"black-text mb-4 big\">你的体重(公斤)</label>\n");
      out.write("                            <input id=\"weight\" name=\"weight\" type=\"text\" class=\"validate tm-input-white-bg mb-4\" required>\n");
      out.write("                        \n");
      out.write("                        </div>\n");
      out.write("                       \n");
      out.write("                        <div class=\"form-group mb-5\">\n");
      out.write("                            <label for=\"gender\" class=\"black-text mb-4 big\">您的性别</label>\n");
      out.write("                            <div>\n");
      out.write("                                <label class=\"mr-4\">\n");
      out.write("                                    <input id=\"sex\" class=\"with-gap\" name=\"gender\" type=\"radio\" value=\"1\" default=\"0\" checked/>\n");
      out.write("                                    <span>男</span>\n");
      out.write("                                </label>\n");
      out.write("                                <label>\n");
      out.write("                                    <input class=\"with-gap\" name=\"gender\" type=\"radio\" value=\"0\" />\n");
      out.write("                                    <span>女</span>\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"message\" class=\"black-text mb-4 big\" vertical-align:middle display:inline-block>您的健康系数</label>\n");
      out.write("                            <textarea class=\"p-3\" name=\"message\" id=\"message\" cols=\"30\" rows=\"6\"></textarea><br><br><br>\n");
      out.write("                             <div class=\"text-center mt-5\">                            \n");
      out.write("                                <a href=\"javascript:void(0);\" class=\"waves-effect btn-large btn-large-white\" id=\"sBtn\" >提交</a>\n");
      out.write("                             </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                   \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("    <script src=\"js/jquery-3.2.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"js/materialize.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('select').formSelect();\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("   <script type=\"text/javascript\">\n");
      out.write("       $(function(){\n");
      out.write("           \n");
      out.write("           $(document).keydown(function (event) {\n");
      out.write("                if (event.keyCode == 13) {\n");
      out.write("                    $('#sBtn').triggerHandler('click');            \n");
      out.write("                     }\n");
      out.write("                });\n");
      out.write("           $(\"#sBtn\").click(function(){              \n");
      out.write("                var height=$(\"#height\").val();\n");
      out.write("                var age=$(\"#age\").val();                \n");
      out.write("                var weight=$(\"#weight\").val();\n");
      out.write("                var sex=$('input:radio:checked').val();\n");
      out.write("                $(\"#message\").empty();\n");
      out.write("                var obj=document.getElementById(\"message\");\n");
      out.write("                if(height==\"\"||age==\"\"||weight==\"\"){\n");
      out.write("                    str=\"信息填写不全，无法为您计算。\"\n");
      out.write("                    obj.append(str);\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    var BMI=(weight/(height*height)).toFixed(3);\n");
      out.write("                    var BF=(1.2*BMI+0.23*age-5.4-sex*10.8).toFixed(3);\n");
      out.write("                    str=\"您的BMI指数：\"+BMI+\"\\n(<=18.4:偏瘦  18.5～23.9:正常  \\n24.0～27.9：过重  >=28.0：肥胖)\"+\"\\n\\n您的体脂率：\"+BF+\"%\"+\"\\n正常值：女性20%～25%，男性15%～18%\";                               \n");
      out.write("                    obj.append(str);\n");
      out.write("                }           \n");
      out.write("           })\n");
      out.write("       })\n");
      out.write("   </script>\n");
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
