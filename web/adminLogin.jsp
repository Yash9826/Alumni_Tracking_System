<%-- 
    Document   : adminLogin
    Created on : Feb 21, 2024, 5:00:07 PM
    Author     : yashc
--%>

<%@page import="dto.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" <link rel="stylesheet" href="css/mystyle.css" type="text/css">
        <title>JSP Page</title>
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icons of social media link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body>
        <!--bootstrap jquery,javascript link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


     <!--Navbar starting-->

<!-- Navbar As a heading -->
<div class="container py-xs-3 py-lg-3  ">
    <div class="row ">
        </br>
        <div class="col-sm-8 primary-color"><font color="dodgerblue">
            <h2><span class="fa fa-graduation-cap mt-4 ">
                    <b>ALUMNI TRACKING</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        SYSTEM</b></span></h2></font>
        </div>

        <div class=" input-group col-sm-4 mt-2 py-4 " >

            <input type="text" class="form-control" placeholder="Search" >
            <div class="input-group-append">
                <button class="btn inline-block " type="button">
                    <i class="fa fa-search"></i>
                </button>
            </div>

        </div>
    </div>
</div>
<!--navbar haeding ending-->


<!--navbar content starts-->
<nav class="navbar navbar-expand-lg navbar-dark primary-background ">
    <div class="container">

        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav">


                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ABOUT <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="indexEvent.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EVENT <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="indexGallary.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GALLARY<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="adminLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMIN LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="alumniLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ALUMNI LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item active">
                    <a class="nav-link" href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONTACT <span class="sr-only">(current)</span></a>
                </li>


            </ul>

        </div>
    </div>

</nav>
<!--navbar content ends-->

        
        
        <!--admin login strats-->
        <form method="POST" action="AdminLoginServlet">
            <div class="container mt-5   primary-color ">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Login Here</font>
                    </div>

                    <%
                        Message m = (Message) session.getAttribute("msg");
                        if (m != null) {
                    %>

                    <div class="alert <%= m.getCssClass()%>"  role="alert">
                        <%= m.getContent()%>
                    </div>

                    <%
                            session.removeAttribute("msg");
                        }
                    %>

                    <div class="card-body primary-color">

                        <div class="form-group text-left">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="admin_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group text-left">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="admin_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password">
                        </div>
                        <div class="card-footer primary-color text-left mt-4">
                            <button  type="submit" class="btn btn-outline-success">Click here to Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--admin login ends-->



        <!--normal footer starts-->
        <%@include  file="normal_footer.jsp" %>
        <!--normal footer ends-->
        
    </body>
</html>
