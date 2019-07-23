package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.*;
import java.sql.*;

public final class food_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>合理膳食</title>\n");
      out.write("\t\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/materialize.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/tooplate.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"register\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-12\">\n");
      out.write("                <header class=\"mb-5\">\n");
      out.write("                    <h3 class=\"mt-0 white-text\">合理膳食</h3>\n");
      out.write("                    <p class=\"grey-text mb-4\">本页面包含膳食搭配、卡路里计算以及食谱查询三个模块</p>\n");
      out.write("                    <p class=\"grey-text\">用户可以通过本页面查询到健康的膳食搭配，后即可查询食谱做法，最后若用户需要还可以查询此次餐食卡路里的摄入。\n");
      out.write("                    </p>\n");
      out.write("                </header>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-12\">\n");
      out.write("                <form action=\"recipies.jsp\" method=\"post\" class=\"tm-signup-form\">\n");
      out.write("                    <div class=\"text-right mt-4\">\n");
      out.write("                        <button type=\"submit\" class=\"waves-effect btn-large btn-large-white px-4 tm-border-radius-0\">今日膳食推荐</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <form action=\"menu.jsp\" method=\"post\" class=\"tm-signup-form\">\n");
      out.write("                    <div class=\"text-right mt-4\">\n");
      out.write("                        <button type=\"submit\" class=\"waves-effect btn-large btn-large-white px-4 tm-border-radius-0\">食谱查询入口</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <form action=\"calorie.jsp\" method=\"post\" class=\"tm-signup-form\">\n");
      out.write("                    <div class=\"text-right mt-4\">\n");
      out.write("                        <button type=\"submit\" class=\"waves-effect btn-large btn-large-white px-4 tm-border-radius-0\">卡路里值计算</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery-3.2.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"js/materialize.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('select').formSelect();\n");
      out.write("        });\n");
      out.write("    </script>\n");
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
