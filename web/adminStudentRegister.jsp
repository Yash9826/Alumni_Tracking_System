<%-- 
    Document   : adminStudentRegister
    Created on : May 2, 2024, 11:17:57 AM
    Author     : yashc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icons of social media link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%@include file="admin_navbar.jsp" %>
        
        
        <!--Alumni Register starts-->
        <form method="POST" action="adminStudentRegisterServlet" id="reg-alumni"  >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Register Student</font>
                    </div>


                    <div class="card-body primary-color">
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Name</label>
                            <input name="name" type="text" class="form-control"  placeholder="Enter Your Name" maxlength="20" required>
                        </div>


                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Email Id</label>
                                <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="Email" required>
                                <small id="emailHelp" class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Enrollment No.</label>
                                <input name="enrollmentNo" type="text" class="form-control"  placeholder="Enter Your Enrollment" required maxlength="12" >
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Registration No.</label>
                                <input name="registrationNo" type="text" class="form-control"  placeholder="Enter your registration number" required maxlength="10">
                                <small  class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Passout Year</label>
                                <input name="PassoutYear" type="text" class="form-control" id="phone" placeholder="Enter Your Passout Year " required  maxlength="4" >
                            </div>
                        </div>
                        
                            

                        <div class="form-row mt-1 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Password</label>
                                <input id="myPass" name="password" type="password" class="form-control"  placeholder="Enter Your Password">
                                <!-- An element to toggle between password visibility -->

                                <input type="checkbox" onclick="myFunction()">&nbsp;Show Password
                            </div>
                           

                        </div>
                        
                        </div>
                    </div>

                    <div class="card-footer primary-color text-left mt-4">
                        <div class="container text-center" id="loader" style="display: none;">
                            <span class="fa fa-refresh fa-spin fa-3x"></span>
                            <h3>Please Wait...</h3>
                        </div>
                        <button  type="submit" class="submit-btn btn btn-outline-success">Click here to Register</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<!--Alumni Register ends-->
        
        
        <%@include file="admin_footer.jsp" %>
    </body>
</html>
