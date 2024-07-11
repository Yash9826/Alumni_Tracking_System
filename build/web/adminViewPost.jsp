<%-- 
    Document   : adminViewPost
    Created on : May 2, 2024, 9:48:13 AM
    Author     : yashc
--%>

<%@page import="dto.Alumni"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Posting"%>
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
        <link rel="stylesheet" href="css/mystyle.css" type="text/css">

    </head>
    <body>
        <!--Admin Navbar starting-->

        <!--importing admin navbar-->
        <%@include  file="admin_navbar.jsp" %>

        <!--Admin Navbar ending-->


        <!--details of all post start-->

        <div class="container primary-color mt-5">
            <div class="card text-center">
                <div class="card-header primary-background">
                    <font style="color: white">View Positions</font>
                </div>
            </div>
        </div>



        <div class="  primary-color">
            <div class="card  text-center ">

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">S.No</th>
                                <th scope="col">Id</th>
                                <th scope="col">Company Name</th>
                                <th scope="col">Position Description</th>
                                <th scope="col">Link</th>
                                <th scope="col">Position Type</th>
                                <th scope="col">Salary</th>
                                <th scope="col">Mode</th>
                                <th scope="col">Locations</th>

                                <th scope="col">Duration</th>

                                <th scope="col">rDate</th>




                            </tr>
                        </thead>
                        <tbody>

                            <%          AdminDAO admin = new AdminDAO(ConnectionProvider.getConnection());
                                ArrayList<Posting> list = admin.getAllPost();
                                int count = 1;
                                for (Posting p1 : list) {

                            %>
                            <tr>
                                <th scope="row"><%= count%></th>
                                <td><%= p1.getId()%></td>
                                <td><%= p1.getName()%></td>
                                <td><%= p1.getDesciption()%></td>
                                <td><a href="<%= p1.getLink() %>" style="color: dodgerblue;"><%= p1.getLink() %></a></td>
                                <td><%= p1.getpType()%></td>
                                <td><%= p1.getSalary()%></td>

                                <td><%= p1.getMode()%></td>
                                <td><%= p1.getLocations()%></td>
                                <td><%= p1.getDuration()%></td>
                                <td><%= p1.getrDate().toLocaleString()%></td>

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

        <!--details of all post ends-->




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
</body>
</html>
