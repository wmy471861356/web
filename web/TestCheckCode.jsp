<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="database.*,java.sql.*"%>
<%
        Object obj = session.getAttribute("SavedCheckCode");
        if (obj == null) {
            response.sendRedirect("/registered.html");
        } else {
            String checkcode = request.getParameter("code");
            String un=request.getParameter("username");
            DatabaseUtil dbUtil=new DatabaseUtil();
            String sql="select * from users where username='"+un+"'";
            ResultSet rs=dbUtil.executeQuery(sql);
            if (checkcode.equals(obj)&&rs.next()) {
                out.print("true");
            } 
            else if(!rs.next()&&checkcode.equals(obj)){
                out.print("username");
            }
            else {
                out.print("false");
            }
        }
%>
