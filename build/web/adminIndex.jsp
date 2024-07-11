<%-- 
    Document   : adminIndex
    Created on : Feb 21, 2024, 10:03:05 PM
    Author     : yashc
--%>

<%@page import="dto.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Admin admin = (Admin)session.getAttribute("currentAdmin");

    if (admin == null) {
        response.sendRedirect("adminLogin.jsp");
    }

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
        <link rel="stylesheet" href="css/mystyle.css" type="text/css">

    </head>
    <body>
        <!--Admin Navbar starting-->

        <!--importing admin navbar-->
        <%@include  file="admin_navbar.jsp" %>
        
        <!--Admin Navbar ending-->
        
        <!--welcome message of admin start-->
<!--        <div class="container text-left primary-color  mt-3">
            <h1 ><font color="dodgerblue"><b>Welcome, <i></i></b></font></h1>
        </div>-->
        <!--welcome message of admin end-->


        <!--grid of images-->
        <div class="container imgContainer mt-4 primary-background">

            <div class="left">
                <img src="img/alumni 1.jpg" alt="alt"/>
            </div>

            <div class="right">
                <div class="right-img">
                    <div class="right-top">
                        <img src="img/alumni 2.jpg" alt="alt"/>
                        <img src="img/alumni 3.jpg" alt="alt"/>
                    </div>
                    <div class="right-bottom">
                        <img src="img/alumni 4.jpg" alt="alt"/>
                        <img src="img/alumni 5.jpg" alt="alt"/>
                    </div>

                </div>
            </div>






        </div>
        <!--grid of images end-->




       




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
        <script>



        </script>
    </body>
</html>
