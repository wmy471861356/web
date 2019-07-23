package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.awt.*;
import java.awt.image.*;
import javax.imageio.*;

public final class getImageCode_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");

    //设置浏览器不缓存图片，这一点还是很有必要的
    response.setHeader("Expires", "0");
    String oldChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
    String[] codeChars = new String[5];
    String saveCode = "";
    for(int n = 0 ; n < 5 ; n++) {
        int index = (int)(35* Math.random());
        codeChars[n] = "" + oldChars.charAt(index);
        saveCode += codeChars[n];
    }
    session.setAttribute("SavedCheckCode", saveCode);

    BufferedImage bi = new BufferedImage(80,20,BufferedImage.TYPE_USHORT_555_RGB);
    Graphics g = bi.getGraphics();
    g.setColor(Color.LIGHT_GRAY);
    g.fillRect(0,0,80,20);
    g.setColor(Color.BLACK);
    g.setFont(new Font("Monotype Corsiva",Font.ITALIC,18));
    g.drawString(codeChars[0], 1,15);
    g.drawString(codeChars[1], 16,13);
    g.drawString(codeChars[2], 31,18);
    g.drawString(codeChars[3], 46,14);
    g.drawString(codeChars[4], 61,15);
    g.dispose();

    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    ImageIO.write(bi, "jpeg", baos);
    byte[] imagebyte = baos.toByteArray();

    response.setContentLength(imagebyte.length);
    response.setContentType("image/jpeg");
    ServletOutputStream imgout = response.getOutputStream();
    imgout.write(imagebyte);
    baos.close();
    imgout.close();


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
