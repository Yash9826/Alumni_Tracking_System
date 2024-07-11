<%-- 
    Document   : alumniEdit
    Created on : Apr 4, 2024, 3:12:21 PM
    Author     : yashc
--%>

<%@page import="dto.Alumni"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<%

    Alumni alumni = (Alumni) session.getAttribute("currentAlumni");
    if (alumni == null) {
       response.sendRedirect("alumniIndex.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icons of social media link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
<body>

    <!--alumni navbar starts-->
    <%@include file="alumni_navbar.jsp" %>
    <!--alumni navbar ends-->



    <!--Alumni Register starts-->
    <form method="POST" action="AlumniEditServlet" id="reg-alumni" enctype="multipart/form-data" >
        <div class="container mt-5   primary-color">
            <div class="card text-center">
                <div class="card-header primary-background">
                    <font style="color: white">Update Details</font>
                </div>


                <div class="card-body primary-color">
                    <div class="form-group text-left">
                        <label for="#" class="text-left">Id</label>
                        <input name="id" type="text" class="form-control"   value="<%= alumni.getId() %>"  readonly>
                    </div>
                    <div class="form-group text-left">
                        <label for="#" class="text-left">Name</label>
                        <input name="name" type="text" class="form-control" 
                               placeholder="Enter Your Name" maxlength="20" required value="<%=alumni.getName()%>">
                    </div>


                    <div class="form-row mt-3 text-left">
                        <div class="form-group col-md-6 ">
                            <label for="inputEmail4">Email Id</label>
                            <input name="email" type="email" class="form-control" id="inputEmail4"
                                   placeholder="Email" required value="<%= alumni.getEmail()%>">
                            <small id="emailHelp" class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                        </div>
                        <div class="form-group col-md-6">
                            <label for="#">Enrollment No.</label>
                            <input name="enrollmentNo" type="text" class="form-control" 
                                   placeholder="Enter Your Enrollment" required maxlength="12" value="<%= alumni.getEnrollment()%>" readonly>
                        </div>
                    </div>
                    <div class="form-row mt-3 text-left">
                        <div class="form-group col-md-6 ">
                            <label>Registration No.</label>
                            <input name="registrationNo" type="text" class="form-control" 
                                   placeholder="Enter your registration number" required maxlength="10" value="<%= alumni.getRegistration()%>">
                            <small  class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                        </div>
                        <div class="form-group col-md-6">
                            <label for="#">Passout Year</label>
                            <input name="PassoutYear" type="text" class="form-control" id="phone" 
                                   placeholder="Enter Your Passout Year " required value="<%= alumni.getYear()%>" maxlength="4" readonly>
                        </div>
                    </div>
                    <div class="form-row mt-3 text-left">
                        <div class="form-group col-md-6 ">
                            <label >Occupation</label>
                            <input name="occupation" type="text" class="form-control" 
                                   placeholder="Enter Your Occpation" required maxlength="20" value="<%= alumni.getOccupation()%>">

                        </div>
                        <div class="form-group col-md-6">
                            <label for="#">Organisation</label>
                            <input name="organisation" type="text" class="form-control"
                                   placeholder="Enter Your Organisation" required maxlength="50" value="<%= alumni.getOrganisation()%>">
                        </div>
                    </div>
                    <div class="form-row mt-3 text-left">
                        <div class="form-group col-md-6 ">
                            <label >Designation</label>
                            <input name="designation" type="text" class="form-control"  
                                   placeholder="Enter Your Designation" required maxlength="50" value="<%= alumni.getDesignation()%>">

                        </div>
                        <div class="form-group col-md-6 ">
                            <label for="#">Date of Birth</label>
                            <input name="dateOfbirth" type="date" class="form-control" 
                                   placeholder="Select date of birth" required value="<%= alumni.getDateOfBirth()%>">
                        </div>
                    </div>

                    <div class="form-row mt-1 text-left">
                        <div class="form-group col-md-6 ">
                            <label>Password</label>
                            <input id="myPass" name="password" type="password" class="form-control" 
                                   placeholder="Enter Your Password" value="<%= alumni.getPassword()%>">
                            <!-- An element to toggle between password visibility -->

                            <input type="checkbox" onclick="myFunction()">&nbsp;Show Password
                        </div>
                        <div class="form-group col-md-6">
                            <label for="#">Contact</label>
                            <input name="contact" type="text" class="form-control" 
                                   placeholder="Enter Your Contact Number" required value="<%= alumni.getContact()%>">
                        </div>

                    </div>
                    <div class="form-row mt-1 text-left">
                        <div class="form-group col-md-6 ">
                            <label >Choose Profile</label>

                            <input  name="image" type="file" class="form-control" >
                        </div>
                    </div>
                </div>

                <div class="card-footer primary-color text-left mt-4">
                    <div class="container text-center" id="loader" style="display: none;">
                        <span class="fa fa-refresh fa-spin fa-3x"></span>
                        <h3>Please Wait...</h3>
                    </div>
                    <button  type="submit" class="submit-btn btn btn-outline-success">Click here to Update</button>
                </div>

            </div>
        </div>
    </div>
</div>
</form>
<!--Alumni Register ends-->


<!--bootstrap jquery,javascript link-->
<script
    src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<%@include file="alumni_footer.jsp" %>



<!--password edit -->
<script>

function myFunction() {
    var x = document.getElementById("myPass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>
<!--password edit ends-->

</body>
</html>
