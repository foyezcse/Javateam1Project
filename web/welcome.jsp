<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <body background="https://www.chobirdokan.com/wp-content/uploads/Nilgiri-Hill-Resort-Bandarban-Bangladesh.jpg?92dbd0&92dbd0">
        
        <h1 align="center"><font color="green" size="42"> Easy Tour Bangladesh</font></h1>
    
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

<%
    }
%>
<div align="left"> <a href='logout.jsp'>Log out</a></div>
<form name="details" action="detailscheck" method="POST">
    <div>
        <h1>Input your current Position: From where you wanna start your Journey-</h1>   
    Your Division :<select name="division">
        <option>Dhaka</option>
        <option>Rajshahi</option>
        <option>Chottogram</option>
        <option>Sylhet</option>
        <option>Rangpur</option>
        <option>Barishal</option>
        <option>Mymenshing</option>
        <option>Khulna</option>
    </select>
    Your District :<select name="districts">
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
    </select>
    <h1>Where do you wanna go(Input the details):</h1>
    Destination : <textarea name="destination" rows="6" cols="20">
    </textarea>
    </div>
    <input type="submit" value="Search Possible Way to Travel" name="search" />
    

</form>
    </body>
</html>
