<%-- 
    Document   : welcome
    Created on : Mar 27, 2018, 4:23:53 PM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <h1 align="center">Happy Journey</h1>
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Progma", "no-cache");
        response.setHeader("Expire", "0");
        
        if(session.getAttribute("email")==null)
        {
        response.sendRedirect("login.jsp");
        }
        
        %>
        <%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="index.html">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("email")%>
<a href='logout.jsp' align="right">Log out</a>
<%
    }
%>
    </body>
</html>
