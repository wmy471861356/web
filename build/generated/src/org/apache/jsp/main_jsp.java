package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"Free Responsive Html5 Templates\">\n");
      out.write("    \n");
      out.write("\t\n");
      out.write("    <title>Your Health</title>\n");
      out.write("\t\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\n");
      out.write("\t<!-- Custom CSS -->\n");
      out.write("\t<link href=\"css/style1.css\" rel=\"stylesheet\">\n");
      out.write("\t\n");
      out.write("\t<!-- Animate.css -->\n");
      out.write("\t<link href=\"css/animate.css\" rel=\"stylesheet\" media=\"all\" type=\"text/css\">\n");
      out.write("\t\n");
      out.write("\t<!-- Lightbox.css -->\n");
      out.write("\t<link href=\"css/lightbox.min.css\" rel=\"stylesheet\" media=\"all\" type=\"text/css\">\n");
      out.write("\t\n");
      out.write("\t<!-- Custom Fonts -->\n");
      out.write("    <link href=\"font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("</head>\n");
      out.write("<body id=\"page-top\" class=\"index-page\">\n");
      out.write("<div class=\"wrap-body\">\n");
      out.write("\n");
      out.write("\t<!--////////////////////////////////////Header-->\n");
      out.write("\t<header>\n");
      out.write("\t\t<!---Main Header--->\n");
      out.write("\t\t<div class=\"main-header\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<!--Navigation-->\n");
      out.write("\t\t\t<nav id=\"menu\" class=\"navbar\">\n");
      out.write("\t\t\t\t<div class=\"container-fluid\">\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t  <span id=\"heading\" class=\"visible-xs\">Health</span>\n");
      out.write("\t\t\t\t\t  <button type=\"button\" class=\"btn btn-navbar navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse navbar-ex1-collapse\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.html\">主页</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">膳食<i class=\"fa fa-chevron-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"dropdown-menu\" style=\"margin-left: -3.625px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"dropdown-inner\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"recipies.html\">膳食推荐</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"archive.html\">食谱查询</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"archive.html#\">卡路里值</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">运动<i class=\"fa fa-chevron-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"dropdown-menu\" style=\"margin-left: -3.625px;\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"dropdown-inner\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"login.html\">运动推荐</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"timer.html\">运动计时</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</li>\t\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"application.html\">个人数据</a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t\t<br>\n");
      out.write("\t\t\t<br>\n");
      out.write("\t\t\t<br>\n");
      out.write("\t\t\t<br>\n");
      out.write("\t\t</div>\n");
      out.write("\t</header>\n");
      out.write("\t<!-- /Section: intro -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!--////////////////////////////////////Container-->\n");
      out.write("\t<section id=\"page-content\" class=\"index-page\">\n");
      out.write("\t\n");
      out.write("\t\t<!-- ////////////Content Box 01 -->\n");
      out.write("\t\t<section class=\"box-content box-1\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"heading wow fadeInUp\" data-wow-delay=\".1s\" data-wow-duration=\"1s\">\n");
      out.write("\t\t\t\t\t<h2>健康管理</h2>\n");
      out.write("\t\t\t\t\t<hr class=\"line\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"isotopeContainer\">\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 col-sm-4 col-md-6 isotopeSelector art\">\n");
      out.write("\t\t\t\t\t\t<div class=\"portfolio-box zoom-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/1-thumb.png\" class=\"img-responsive\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"portfolio-box-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"portfolio-box-caption-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"project-social\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"list-inline\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"signup.html\"><i class=\"fa fa-link\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"images/100.png\" data-lightbox=\"example-set\" data-title=\"Click the right half of the image to move forward.\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"tlinks\">Collect from <a href=\"http://www.cssmoban.com/\" >自助建站</a></div>\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 col-sm-4 col-md-6 isotopeSelector art\">\n");
      out.write("\t\t\t\t\t\t<div class=\"portfolio-box zoom-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/2-thumb.png\" class=\"img-responsive\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"portfolio-box-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"portfolio-box-caption-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"project-social\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"list-inline\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"sport.html\"><i class=\"fa fa-link\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"images/200.png\" data-lightbox=\"example-set\" data-title=\"Click the right half of the image to move forward.\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 col-sm-4 col-md-6 isotopeSelector illustrations\">\n");
      out.write("\t\t\t\t\t\t<div class=\"portfolio-box zoom-effect\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/3-thumb.png\" class=\"img-responsive\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"portfolio-box-caption\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"portfolio-box-caption-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"project-social\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"list-inline\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"application.html\"><i class=\"fa fa-link\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"images/300.png\" data-lightbox=\"example-set\" data-title=\"Click the right half of the image to move forward.\"><i class=\"fa fa-search\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t</section>\n");
      out.write("\t\n");
      out.write("\t<!-- Footer -->\n");
      out.write("\t<div id=\"page-top\"><a href=\"#page-top\" class=\"btn btn-toTop\"><i class=\"fa fa-angle-double-up\"></i></a></div>\n");
      out.write("\t\n");
      out.write("\t<!-- ========== Scripts ========== -->\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-3.1.1.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.localScroll.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.scrollTo.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/SmoothScroll.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/wow.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/isotope.pkgd.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/lightbox.min.js\"></script>\n");
      out.write("\t\n");
      out.write("\t<!-- Definity JS -->\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("\t\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
