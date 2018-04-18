<%-- 
    Document   : registration
    Created on : Mar 27, 2018, 12:02:29 AM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
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
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
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
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>

    </head>
    <body background="https://www.gut-in-den-urlaub.com/data/frontFiles/tours/tours_image/3-Day%20Bus%20Tour%20%20New%20York.jpg">
        <h1 align="center"><font face="Tahoma" size=36 color="#142a30">"Easy Tour Bangladesh Registration"</font></h1>
        <div>
        <form name="RegistrationValidate" action="RegistrationValidate" method="POST">
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td><b>Name</b></td>
                        <td><input type="text" name="Name" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td><b>Email</b></td>
                        <td><input type="text" name="Email" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td><input type="password" name="Password" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td><b>Confirm Password</b></td>
                        <td><input type="password" name="Cpassword" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td><b>National ID</b></td>
                        <td><input type="text" name="Nid" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td><b>Address</b></td>
                        <td><textarea name="Address" rows="6" cols="40">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" name="submit" /></td>
                        <td><input type="reset" value="Reset" name="reset" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        </div>
    </body>
</html>
