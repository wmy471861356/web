<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	
        String dishname=request.getParameter("dishname");
        String img=request.getParameter("img");
        String un=session.getAttribute("username").toString();
	DatabaseUtil dbUtil=new DatabaseUtil();
	String sql="select * from dishes where dishname='"+dishname+"' and username='"+un+"'";
	ResultSet rs=dbUtil.executeQuery(sql);
        if(!rs.next()){
            sql="insert into dishes (username,dishname,img) values ('"+un+"','"+dishname+"','"+img+"')";
            dbUtil.executeUpdate(sql);
            out.print("true");}
        else{
            out.print("false");
        }
%>

