package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" type=\"text/javascript\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/bootsnav.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/normalize.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/css.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script src=\"js/jquery-1.11.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootsnav.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/TweenLite/TweenLite.min.js\"></script>\n");
      out.write("        <script src=\"js/TweenLite/EasePack.min.js\"></script>\n");
      out.write("        <script src=\"js/TweenLite/rAF.js\"></script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("  \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("        $(function(){\n");
      out.write("\t$(\"#username\").blur(function(){\n");
      out.write("        $.ajax(\n");
      out.write("\t{  url:\"checkname.jsp?username=\"+$(\"#username\").val(),\n");
      out.write("\t\tsuccess:function(result){\n");
      out.write("\t     if(result.trim()===\"true\"){\n");
      out.write("                    $(\"#txt\").html(\"\");\n");
      out.write("                    $(\"#submitbtn\").attr(\"disabled\",false);\n");
      out.write("\t\t  }else{\n");
      out.write("                    $(\"#txt\").html(\"<font size=3 color=red face=楷体>该账户不存在，请重新输入！</font>\");\n");
      out.write("                    $(\"#submitbtn\").attr(\"disabled\",true);\n");
      out.write("                }\n");
      out.write("\t         }\n");
      out.write("\t     });\n");
      out.write("      });\n");
      out.write("  })\n");
      out.write("  </script>\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("        $(function(){\n");
      out.write("\t$(\"#password\").blur(function(){\n");
      out.write("        $.ajax(\n");
      out.write("\t{  url:\"checkpassword.jsp?password=\"+$(\"#password\").val()+\"&username=\"+$(\"#username\").val(),\n");
      out.write("\t\tsuccess:function(result){\n");
      out.write("\t      if(result.trim()===\"true\"){\n");
      out.write("                    $(\"#txt1\").html(\"\");                  \n");
      out.write("                    $(\"#submitbtn\").attr(\"disabled\",false);\n");
      out.write("                    \n");
      out.write("\t\t  }\n");
      out.write("                else if($(\"#password\").val()===\"\"){\n");
      out.write("                    $(\"#txt1\").html(\"<font size=3 color=red face=楷体>请输入密码！</font>\");\n");
      out.write("                    $(\"#submitbtn\").attr(\"disabled\",true);\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    $(\"#txt1\").html(\"<font size=3 color=red face=楷体>密码错误，请重新输入！</font>\");\n");
      out.write("                    $(\"#submitbtn\").attr(\"disabled\",true);\n");
      out.write("                }\n");
      out.write("\t         }\n");
      out.write("\t     });\n");
      out.write("      });\n");
      out.write("  })\n");
      out.write("        function onInput() {\n");
      out.write("          console.log(\"正在输入...\");\n");
      out.write("          document.getElementById(\"submitbtn\").disabled=false;\n");
      out.write("        }\n");
      out.write("  </script>\n");
      out.write(" \n");
      out.write("  \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>登录</title>\n");
      out.write("    </head>\n");
      out.write("        <body class=\"logobg_style\">\n");
      out.write("        <div id=\"large-header\" class=\"large-header login-page\">\n");
      out.write("        <canvas id=\"demo-canvas\" width=\"1590\" height=\"711\"></canvas>\n");
      out.write("        <div class=\"login-form\">\n");
      out.write("        <div class=\"login-content\">\n");
      out.write("        <h1 class=\"title_name\">账户登录</h1>\n");
      out.write("        <form method=\"post\" role=\"form\" id=\"form_login\" class=\"login_padding\" action=\"list.action\">\n");
      out.write("        <div class=\"form-group clearfix\">\n");
      out.write("        <div class=\"input-group\">\n");
      out.write("\t<div class=\"input-group-addon\">\n");
      out.write("\t<i class=\"icon_user\"></i>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("\t<input type=\"text\" class=\"form-control\" name=\"username\" id=\"username\" placeholder=\"用户名\" autocomplete=\"off\" onblur=\"checkname();\" >\n");
      out.write("\t\n");
      out.write("        </div>\n");
      out.write("        <span id=\"txt\"></span><br>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("\t<div class=\"form-group clearfix\">\n");
      out.write("        \n");
      out.write("\t<div class=\"input-group\">\n");
      out.write("        <div class=\"input-group-addon\">\n");
      out.write("\t<i class=\"icon_password\"></i>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<input type=\"password\" class=\"form-control\" name=\"password\" id=\"password\" placeholder=\"密码\" autocomplete=\"off\" onblur=\"checkpassword();\" oninput=\"onInput()\">\n");
      out.write("\t</div>\n");
      out.write("        <span id=\"txt1\"></span><br>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\" textright\"><a href=\"forgetpwd.html\" class=\"forget\">忘记密码？</a></div>\n");
      out.write("        <div class=\"tishi\"></div>\n");
      out.write("\t<div class=\"form-group\">\n");
      out.write("        <input  type=\"submit\" value=\"登录\" class=\"btn btn-danger btn-block btn-login\" id=\"submitbtn\" disabled=\"true\">\n");
      out.write("\t<i class=\"fa fa-sign-in\"></i>\n");
      out.write("\t</input>\n");
      out.write("\t</div>\n");
      out.write("        <div class=\" textright\"><a href=\"registered.html\" class=\"forget\">立即注册</a></div>\n");
      out.write("\t<div class=\"form-group\"></div>\n");
      out.write("        </form>\n");
      out.write("  \t</div>\n");
      out.write("  \t</div>\n");
      out.write("  \t</div>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
