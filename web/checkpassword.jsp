<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String pwd=request.getParameter("password");
        String un=request.getParameter("username");
	DatabaseUtil dbUtil=new DatabaseUtil();
	String sql="select * from users where password='"+pwd+"' and username='"+un+"'";
	ResultSet rs=dbUtil.executeQuery(sql);
	if(rs.next()){						
		out.print("true");
	}
	else{
		out.print("false");
	}
%>

