
<%-- 
    Document   : welcome
    Created on : Mar 27, 2018, 4:23:53 PM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
        
    </head>
    <body background="">
        
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
    </div>
    <div id="map" style="width:100%;height:400px;"> Your area map</div>
    <script>
      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.
      var map, infoWindow;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 6
        });
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            infoWindow.open(map);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDZ62yod17ldbTocks-8FsNhjiMwYyCs8A&callback=initMap">
    </script>
    <div>
    <h1>Where do you wanna go(Input the details):</h1>
    From : <input type="text" name="place1" value="" />
    TO   :<input type="text" name="place2" value="" />
    </div>
    <input type="submit" value="Search Possible Way to Travel" name="search" />
    

</form>
    </body>
</html>
