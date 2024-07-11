<%-- 
    Document   : adminViewAlumni
    Created on : Mar 30, 2024, 8:23:15 AM
    Author     : yashc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Alumni"%>
<%@page import="helper.ConnectionProvider"%>
<%@page import="dao.AdminDAO"%>
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
        <%@include  file="admin_navbar.jsp" %>


        <!--details of all alumni start-->

        <div class="container primary-color mt-5">
            <div class="card text-center">
                <div class="card-header primary-background">
                    <font style="color: white">All Alumni</font>
                </div>
            </div>
        </div>



        <div class="  primary-color">
            <div class="card  text-center ">
                <!--                <div class="card-header primary-background">
                                    <font style="color: white">All Alumni</font>
                                </div>-->
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">S.No</th>
                                <th scope="col">Profile</th> 
                                <th scope="col">Id</th>
                                
                                <th scope="col">Name</th>

                                <th scope="col">Email</th>
                                
                                <th scope="col">Enrollment.No</th>
                                <th scope="col">Registration.No</th>
                                <th scope="col">Occupation</th>
                                <th scope="col">Organisation</th>

                                <th scope="col">Designation</th>
                                <th scope="col">DOB</th>
                                <th scope="col">Password</th>
                                <th scope="col">Contact</th>


                                <th scope="col">Year</th>
                                <th scope="col">Registration Date</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%          AdminDAO admin = new AdminDAO(ConnectionProvider.getConnection());
                                ArrayList<Alumni> list = admin.getAllAlumni();
                                int count = 1;
                                for (Alumni alumni1 : list) {

                            %>
                            <tr>
                                <th scope="row"><%= count%></th>
                                <td><img src="pic/<%= alumni1.getImg()%>" width="200px" height="200px" alt="Source not found"/></td>

                                <td><%= alumni1.getId()%></td>
                                <td><%= alumni1.getEmail().toUpperCase()%></td>
                                <td><%= alumni1.getName()%></td>
                                
                                <td><%= alumni1.getEnrollment()%></td>
                                <td><%= alumni1.getRegistration()%></td>
                                <td><%= alumni1.getOccupation()%></td>
                                <td><%= alumni1.getOrganisation()%></td>
                                <td><%= alumni1.getDesignation()%></td>
                                <td><%= alumni1.getDateOfBirth()%></td>
                                <td><%= alumni1.getPassword()%></td>
                                <td><%= alumni1.getContact()%></td>
                                <td><%= alumni1.getYear()%></td>
                                <td><%=alumni1.getRdate().toLocaleString() %></td>
                            </tr>
                            <%
                                    count++;
                                }
                            %>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>

        <!--details of all alumni ends-->









        <%@include  file="admin_footer.jsp" %>
        <!--bootstrap jquery,javascript link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



    </body>
</html>
