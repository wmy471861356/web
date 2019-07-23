<%@ page import="database.*,java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String un=request.getParameter("username");
	DatabaseUtil dbUtil=new DatabaseUtil();
	String sql="select * from users where username='"+un+"'";
	ResultSet rs=dbUtil.executeQuery(sql);
	if(rs.next()){						
		out.print("true");
	}
	else{
		out.print("false");
	}
%>

