<%-- 
    Document   : login
    Created on : Mar 26, 2018, 11:36:12 PM
    Author     : Science Fidelity
--%>

<%@page import="com.happyjourney.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Easy Tour Bangladesh</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
    </head>
    <body background="https://brightcove04pmdo-a.akamaihd.net/5104226627001/5104226627001_5240580206001_5212829389001-vs.jpg?pubId=5104226627001&videoId=5212829389001">
        
        <br>
        <h1 align="center"><font face="Tahoma" size=36 color="#5ef26d">Welcome to "Easy Tour Bangladesh"</font></h1>
        <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
    <form class="modal-content animate" action="Login" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="" alt="Welcome" class="avatar">
    </div>

    <div class="container">
      <label for="email"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="email" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="password">Forgot <a href="registration.jsp">Password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

        <div>
            <form action="Login" onsubmit="return validation()" method="POST">
        <br>
        <br>
        <br>
        <table border="0" align="center">
            <caption><h1><font face="Tahoma" size="24" align="center">Login Here</font></h1></caption>
        
                <tr>
                    <td><b>Email Address</b></td>
                    <td><input type="text" name="email" value=""/></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="password" value=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" name="submit"/></td>
                    <td><a href="registration.jsp" target="_blank" align="center">Sign Up</a></td>
                </tr>
            </table>
        
        </form>
            </div>
        <script type="text/javascript">
            function validation(){
                var email=document.login.email.value;
                var password=document.login.password.value;
                
                if(email===""||password===""){
                    alert("Both Fields should not be blank");
                    return;
                }
                if(password.length<6){
                    alert("Password should have alteast 6 character");
                    return;
                }
                
                
            }
            
        </script>
   
    </body>
</html>
