<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.awt.*,java.awt.image.*,javax.imageio.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    //设置浏览器不缓存图片，这一点还是很有必要的
    response.setHeader("Expires", "0");
    String oldChars = "abcdefghijklmnopqrstuvwxyz123456789";
    String[] codeChars = new String[5];
    String saveCode = "";
    for(int n = 0 ; n < 5 ; n++) {
        int index = (int)(35* Math.random());
        codeChars[n] = "" + oldChars.charAt(index);
        saveCode += codeChars[n];
    }
    session.setAttribute("SavedCheckCode", saveCode);

    
    
    BufferedImage bi = new BufferedImage(100,40,BufferedImage.TYPE_USHORT_555_RGB);
    Graphics g = bi.getGraphics();
    g.setColor(Color.LIGHT_GRAY);
    g.fillRect(0,0,100,40);
    
    g.setColor(Color.BLACK);
    g.setFont(new Font("Monotype Corsiva",Font.ITALIC,25));
    g.drawString(codeChars[0], 1,22);
    g.drawString(codeChars[1], 16,23);
    g.drawString(codeChars[2], 31,24);
    g.drawString(codeChars[3], 46,26);
    g.drawString(codeChars[4], 61,23);
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

%>