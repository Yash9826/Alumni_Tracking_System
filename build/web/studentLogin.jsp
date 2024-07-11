<%-- 
    Document   : studentLogin
    Created on : May 2, 2024, 11:44:09 AM
    Author     : yashc
--%>

<%@page import="dto.Message"%>
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
        <link rel="stylesheet" href="css/mystyle.css" type="text/css">
   
    </head>
    <body>
       <!--Navbar starting-->

<!-- Navbar As a heading -->
<div class="container py-3 py-lg-3  ">
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
                    <a class="nav-link" href="index.jsp">&nbsp;&nbsp;&nbsp;HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="">&nbsp;&nbsp;&nbsp;ABOUT <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="indexEvent.jsp"">&nbsp;&nbsp;&nbsp;&nbsp;EVENT <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="indexGallary.jsp">&nbsp;&nbsp;&nbsp;&nbsp;GALLARY<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="adminLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMIN LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="alumniLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ALUMNI LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="studentLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STUDENT LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="studentLogin.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STUDENT LOGIN  <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="contactUs.jsp">&nbsp;&nbsp;&nbsp;&nbsp;CONTACT <span class="sr-only">(current)</span></a>
                </li>

            </ul>

        </div>
    </div>

</nav>
<!--navbar content ends-->

     
     
      <!--admin login strats-->
        <form method="POST" action="studentLoginServlet">
            <div class="container mt-5   primary-color ">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">StudentLogin Here</font>
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
                            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group text-left">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password">
                        </div>
                        <div class="card-footer primary-color text-left mt-4">
                            <button  type="submit" class="btn btn-outline-success">Click here to Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--admin login ends-->
        
        
        
        
        
        <!--footer starts-->
        <footer style="background-color: black" class="mt-4">
            <div class="container primary-color " style="color: white">
                <div class="row py-5 py-lg-5">
                    <div class="col-4 text-left">
                        <h3>Get in Touch</h3>
                        <hr width="100%" size="2" color="white" style="border: 1px solid">


                        <span class="fa fa-envelope">&nbsp;IIST clg, Indore</span></br>
                        <span class="fa fa-envelope"></span>
                        <a href="mailto:indoreinstitute.com" >&nbsp;indoreinstitute.com</a></br>
                        <span class="fa fa-phone">&nbsp;&nbsp;+91 9826752685</span></br>

                        <a href="#" class="footer-icons fa fa-facebook"></a>
                        <a href="#" class="footer-icons fa fa-twitter"></a>
                        <a href="#" class="footer-icons fa fa-instagram"></a>
                        <a href="#" class="footer-icons fa  fa-youtube-play"></a>


                    </div>
                    <div class="col-4 text-left">
                        <h3>About Alumni Tracking</h3>
                        <hr width="100%" size="2" color="white" style="border: 1px solid">
                        <p style="text-align: left">
                            Our platform is designed to foster seamless communication and updates 
                            within our vibrant alumni community. Here,
                            you'll have the opportunity to reconnect with fellow alumni,
                            share your professional achievements,
                            and stay informed about the latest developments within our alma mater.
                        </p>
                    </div>
                    <div class="col-4 text-left">
                        <h3>Quick Menu</h3>
                        <hr width="100%" size="2" color="white" style="border: 1px solid">

                        <span class=" fa fa-arrow-right"><a href="index.jsp" >&nbsp;Home</a></span></br>
                        <span class="fa fa-arrow-right"><a href="" >&nbsp;About Us</a></span></br>
                        <span class="fa fa-arrow-right"><a href="indexEvent.jsp" >&nbsp;Events</a></span></br>
                        <span class="fa fa-arrow-right"><a href="" >&nbsp;Contact Us</a></span></br>
                        
                    </div>
                </div>
            </div>



            <div class="container text-center">
                <div class="row">
                    <div class="col-12">
                        <a href="alumniLogin.jsp"  >Alumni Login</a><h5 style="display:inline; color: white"> &emsp;&emsp;|&emsp;&emsp;</h5>
                         <a href="adminLogin.jsp" >Admin Login</a>
                    </div>



                </div>
            </div>


            <div class="container mt-5 primary-color">
                <div class="row">
                    <div class="col text-left">
                        <p style="color: white">Copyright &copy; <font style="color: dodgerblue">Alumni Tracking System.</font> All Rights Reserved.</p>
                    </div>
                    <div class="col text-right">
                        <p style="color: white">Developed by<a href="" style="color: dodgerblue"> Students projects LIVE</a></p>

                    </div>
                </div>
            </div>
        </footer>

        <!--footer endes-->
    </body>
</html>
