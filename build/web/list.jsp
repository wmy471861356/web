<%-- 
    Document   : list
    Created on : 2019-7-3, 15:29:26
    Author     : 王萌宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table border="1" align="center">
            <tr>
                <td>用户名</td>
                <td>密码</td>
            </tr>
          
        <s:iterator value="list" id="st">
            <tr>
            <td><s:property value="#st.username"/></td>
            <td><s:property value="#st.password"/></td>
            </tr>
        </s:iterator>
    </body>
</html>
