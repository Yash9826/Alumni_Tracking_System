<%-- 
    Document   : adminChangePassword
    Created on : Mar 13, 2024, 3:02:00 PM
    Author     : yashc
--%>

<%@page import="dto.Admin"%>
<%@page import="dto.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Admin admin = (Admin) session.getAttribute("currentAdmin");

    if (admin == null) {
        response.sendRedirect("adminChangePassword.jsp");
    }
     // System.out.println("admin_id = " + admin.getId());

%>


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


        <!--importing admin navbar-->
        <%@include  file="admin_navbar.jsp" %>

        <!--Admin Navbar ending-->


        <!--admin change password starts--> 
        <form method="POST" action="AdminEditServlet" id="edit-admin">
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Change Password</font>
                    </div>

                    
                    
                    <div class="card-body primary-color">
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Id</label>
                            <input name="admin_id" type="number" class="form-control" readonly  value="<%= admin.getId() %> ">
                        </div>
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Name</label>
                            <input name="admin_name" type="text" class="form-control" id="adminName" placeholder="Enter Your Name" value="<%= admin.getName() %>">
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Email Id</label>
                                <input name="admin_email" type="email" class="form-control" id="inputEmail4" placeholder="Email" readonly value="<%= admin.getEmail()%>">
                                <small id="emailHelp" class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Contact</label>
                                <input name="admin_contact" type="tel" class="form-control" id="phone"
                                       placeholder="Enter Your Contact Number"
                                       value="<%= admin.getContact()%>">
                            </div>
                        </div>
                        <div class="form-row mt-1 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Password</label>
                                <input id="myPass" name="admin_password" type="password" class="form-control"  placeholder="Enter Your Password" value="<%= admin.getPassword()%>">
                                <!-- An element to toggle between password visibility -->
                               
                                <input type="checkbox" onclick="myFunction()">Show Password
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
        </form>
        <!--admin change password ends-->






        <!--footer stars-->
        <%@include  file="admin_footer.jsp" %>
        <!--footer endss-->

        <!--bootstrap jquery,javascript link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        

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
        

    
<!-- 
     <script>
            $(document).ready(function () {
                console.log("loaded");

                $('#edit-admin').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();

                    // sending AddNewAdminServlet 

                    $.ajax({
                        url: "AdminEditServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            
                            if (data.trim() === 'done')
                            {
                                {
                                    swal(" Succesfully Registered Admin! we are redirecting to Home page.")
                                            .then((value) => {
                                                window.location = "adminIndex.jsp";
                                            });

                                }
                            }
                           
                            else
                            {
                                swal(data);
                                swal("Something went wrong.Please try again later!");
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong.Please try again later!");




                        },
                        processData: false,
                        contentType: false

                    });



                });
            });

        </script>
-->
    </body>
</html>
