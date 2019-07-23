package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class apitest2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta http-equiv=\"Access-Control-Allow-Origin\" content=\"*\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">       \n");
      out.write("        <script src=\"http://libs.baidu.com/jquery/2.0.0/jquery.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <input type=\"text\" id=\"txt\" placeholder=\"请输入你的菜\"/><br>\n");
      out.write("    <button id=\"sub\">提交</button><br>\n");
      out.write("    <button id=\"collect\">收藏</button><br>\n");
      out.write("    <a href=\"\" id=\"goto\">查看我收藏的菜谱</a><br>\n");
      out.write("        <span id=\"title\"></span><br>\n");
      out.write("        <span id='ingredients'></span><br>\n");
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
      out.write("        $(\"#sub\").click(function(){                    \n");
      out.write("\t$.ajax({\n");
      out.write("        type:\"GET\",\n");
      out.write("        url:'http://apis.juhe.cn/cook/query?menu='+encodeURI($(\"#txt\").val())+'&dtype=&pn=&rn=&key=d5d917bcc6bc2f2132d971c3951aff34', //访问的链接\n");
      out.write("        dataType:\"jsonp\",  //数据格式设置为jsonp\n");
      out.write("        jsonp:\"callback\",  //Jquery生成验证参数的名称\n");
      out.write("        \n");
      out.write("        success:function(data){   \n");
      out.write("            console.log(data.result);\n");
      out.write("            if(data.resultcode == '200'){\n");
      out.write("                 $(\"#title\").html(\"<font size=3 color=black face=楷体>你的菜：\"+data.result.data[0].title+\"</font>\");\n");
      out.write("                 $(\"#ingredients\").html(\"<font size=3 color=black face=楷体>需要的食材：\"+data.result.data[0].ingredients+\"</font>\");            \n");
      out.write("//                  \n");
      out.write("            }\n");
      out.write("        },\n");
      out.write("        error:function(data){\n");
      out.write("             alert(data.resultcode);\t\n");
      out.write("        }\n");
      out.write("         })\n");
      out.write("     })\n");
      out.write("     $(\"#collect\").click(function(){          \n");
      out.write("                    if ($(\"#txt\").val() == \"\") {\n");
      out.write("                      alert(\"未输入任何菜\");\n");
      out.write("                        $(\"#txt\").focus();\n");
      out.write("                        return;\n");
      out.write("\t            }                   \n");
      out.write("                   else{\n");
      out.write("                    $.ajax(\n");
      out.write("                    {  \n");
      out.write("                        type:\"post\",\n");
      out.write("                        url:\"collect.jsp?dishname=\"+$.trim($(\"#txt\").val()),\n");
      out.write("                        success:function(result){                    \t\t\n");
      out.write("                        if(result.trim()===\"true\"){\n");
      out.write("                          alert(\"收藏成功!\");\n");
      out.write("                      }\n");
      out.write("                    else{\n");
      out.write("                        alert(\"您已收藏过这道菜了！\");\n");
      out.write("                        return false;\n");
      out.write("                }\n");
      out.write("\t         }\n");
      out.write("\t     \n");
      out.write("             });\n");
      out.write("             \n");
      out.write("            }\n");
      out.write("\t          \n");
      out.write("                \n");
      out.write("\t\t\n");
      out.write("                \n");
      out.write("      })\n");
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
