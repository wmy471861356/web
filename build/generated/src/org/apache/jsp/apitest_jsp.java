package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class apitest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">       \n");
      out.write("        <script src=\"http://libs.baidu.com/jquery/2.0.0/jquery.js\"></script>>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <input type=\"text\" id=\"txt\" placeholder=\"请输入你所在的城市\"/>\n");
      out.write("    <button id=\"sub\">提交</button><br>\n");
      out.write("    \n");
      out.write("        <span id=\"date\"></span><br>\n");
      out.write("        <span id='city'></span><br>\n");
      out.write("        <span id='air_level'></span><br>\n");
      out.write("        <span id='tips'></span><br>\n");
      out.write("        <span id='time'></span>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("         $(document).keydown(function (event) {\n");
      out.write("                if (event.keyCode == 13) {\n");
      out.write("                    $('#sub').triggerHandler('click');            \n");
      out.write("                     }\n");
      out.write("                });\n");
      out.write("        var RUL_list;\n");
      out.write("        $(\"#sub\").click(function(){  \n");
      out.write("           \n");
      out.write("        RUL_list='http://hd215.api.yesapi.cn/?service=App.Common_Weather.LiveWeather&city='+encodeURI($(\"#txt\").val())+'&app_key=B50B2DB6C0835FBC1EB2D5BC2DFC7941';\n");
      out.write("         \n");
      out.write("         \n");
      out.write("\t$.ajax({\n");
      out.write("        type:'post',\n");
      out.write("        url: RUL_list,\n");
      out.write("        dataType : 'json',\n");
      out.write("        async : true, //默认为true 异步\n");
      out.write("        success:function(data){   \n");
      out.write("            console.log(data.data);\n");
      out.write("            if(data.ret == '200'&&data.data.weather!='没有该地区数据'){\n");
      out.write("//              $.each(data.data,function(key,arr){ \n");
      out.write("                            \n");
      out.write("                            $(\"#city\").html(\"<font size=3 color=black face=楷体>你的城市：\"+data.data.weather.city+\"</font>\");\n");
      out.write("\t\t            $(\"#date\").html(\"<font size=3 color=black face=楷体>今天是：\"+data.data.weather.date+\"</font>\");\n");
      out.write("                            $(\"#air_level\").html(\"<font size=3 color=black face=楷体>天气：\"+data.data.weather.weather+\"</font>\");\n");
      out.write("                            $(\"#tips\").html(\"<font size=3 color=black face=楷体>空气质量：\"+data.data.weather.air_level+\"</font>\");\n");
      out.write("                            $(\"#time\").html(\"<font size=3 color=black face=楷体>信息来源时间：\"+data.data.weather.time+\"</font>\");      \n");
      out.write("\t\t            \t\t           \n");
      out.write("//\t\t          });\n");
      out.write("            }else if(data.data.weather=='没有该地区数据'){\n");
      out.write("            \t\n");
      out.write("                $(\"#city\").html(\"<font size=3 color=black face=楷体>没有该地区数据</font>\");\n");
      out.write("            \t$(\"#date\").html(\"<font size=3 color=black face=楷体> </font>\");\n");
      out.write("                $(\"#air_level\").html(\"<font size=3 color=black face=楷体> </font>\");\n");
      out.write("                $(\"#tips\").html(\"<font size=3 color=black face=楷体> </font>\");\n");
      out.write("                $(\"#time\").html(\"<font size=3 color=black face=楷体> </font>\");    \n");
      out.write("            \t\n");
      out.write("            }\n");
      out.write("        },\n");
      out.write("        error:function(data){\n");
      out.write("             alert(data.ret);\t\n");
      out.write("        }\n");
      out.write("         })\n");
      out.write("     })\n");
      out.write("</script>\n");
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
