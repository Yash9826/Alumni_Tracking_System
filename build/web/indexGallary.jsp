<%-- 
    Document   : indexGallary
    Created on : May 1, 2024, 10:19:56 PM
    Author     : yashc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Gallary"%>
<%@page import="dto.Gallary"%>
<%@page import="dao.AdminDAO"%>
<%@page import="helper.ConnectionProvider"%>
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
                    <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ABOUT <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="indexEvent.jsp"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EVENT <span class="sr-only">(current)</span></a>
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
        

<form >
            
             <div class="container mt-5   primary-color ">

            <%
                AdminDAO dao = new AdminDAO(ConnectionProvider.getConnection());
                ArrayList<Gallary> list = dao.getAllGallary();
                int count = 1;
                for (Gallary g1 : list) {

            %>

            <div class="card text-left ">

                <div class="card-header primary-background text-center">
                    <font style="color: white"><b><%= g1.getName().toUpperCase()%></b></font>
                </div>


                <!--details of all gallary start-->

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>

                                <th scope="col">S.No</th>
                                <th scope="col">Image</th>
                                <th scope="col">Date</th>



                            </tr>
                        </thead>
                        <tbody>


                            <tr>

                                <th scope="row"><%= count%></th>


                                <td><img src="pic/<%= g1.getImage()%>" width="350px" height="200px" alt="Source not found"/></td>

                                <td><%=g1.getRdate().toLocaleString()%></td>
                              


                            </tr>




                        </tbody>
                    </table>
                </div>

            </div>
            <%
                    count++;
                }

            %>
        </div>
        </form>



        
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
