<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String pwd=request.getParameter("password");
        String cp=request.getParameter("confirmpwd");
        String un=request.getParameter("username");
	DatabaseUtil dbUtil=new DatabaseUtil();
        if(cp.equals(pwd)&&un!=""&&cp!=""&&pwd!=""){
            String sql="insert into users (username,password) values ('"+un+"','"+pwd+"')";
            dbUtil.executeUpdate(sql);
            out.print("true");}
        else{
            out.print("false");
        }
%>

