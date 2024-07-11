<%-- 
    Document   : adminGetEventById
    Created on : Apr 2, 2024, 3:11:00 PM
    Author     : yashc
--%>

<%@page import="helper.ConnectionProvider"%>
<%@page import="dto.Event"%>
<%@page import="dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--footer icons of social media link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/mystyle.css" type="text/css">

    </head>
    <body>
        <!--importing admin navbar-->
        <%@include  file="admin_navbar.jsp" %>
        <!--Admin Navbar ending-->

        <%

            int id = Integer.parseInt(request.getParameter("id"));
            AdminDAO dao = new AdminDAO(ConnectionProvider.getConnection());
            Event event = dao.getEventById(id);
        %>

        <!--details of all events start-->

        <form method="post" action="adminUpdateEventServlet" enctype="multipart/form-data">
            <div class="container mt-5 primary-color">
                <div class="card text-center ">
                    <div class="card-header primary-background">
                        <font style="color: white">All Events</font>
                    </div>
                    <div class="card-body">
                        <table class="table">

                            <tbody>

                                <tr>
                                    <th scope="row">1</th>
                                    <td><b>Id</b></td>
                                    <td><input name="id" type="text" class="form-control" value="<%= event.getEid()%>" readonly></td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td><b>Name</b></td>
                                    <td><input name="name" type="text" class="form-control" value="<%= event.getEname()%>"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td><b>Location</b></td>
                                    <td><input  name="location" type="text" class="form-control" value="<%= event.getElocation()%>"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td><b>Date</b></td>
                                    <td><input name="date" type="date" class="form-control" value="<%= event.getEdate()%>"></td>
                                   
                                </tr>
                                <tr>
                                  
                                    <th scope="row">5</th>
                                    <td><b>Old Image</b></td>
                                    <td><input  type="text" class="form-control" value="<%= event.getEimage()%>" readonly></td>
                                   
                                    
                                </tr>
                                <tr>
                                  
                                    <th scope="row">5</th>
                                    <td><b>New Image</b></td>
                                    <td><input  name="image" type="file" class="form-control" ></td>
                                   
                                    
                                </tr>


                            </tbody>


                        </table>
                        <div class="card-footer primary-color text-center mt-4">
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

        <!--details of all events ends-->

        <!-- Button trigger modal -->





        <!--footer stars-->
        <%@include  file="normal_footer.jsp" %>
        <!--footer endss-->



        <!--bootstrap jquery,javascript link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
