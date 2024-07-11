<%-- 
    Document   : alumniViewAlumni
    Created on : May 1, 2024, 9:50:18 PM
    Author     : yashc
--%>

<%@page import="dao.AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Alumni"%>
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

        <!--alumni navbar starts-->
        <%@include file="alumni_navbar.jsp" %>
        <!--alumni navbar ends-->

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

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">S.No</th>
                                <th scope="col">Profile</th>

                                <th scope="col">Name</th>
                                <th scope="col">Email</th>

                                <th scope="col">Enrollment.No</th>

                                <th scope="col">Occupation</th>
                                <th scope="col">Organisation</th>

                                <th scope="col">Designation</th>


                                <th scope="col">Contact</th>


                                <th scope="col">Year</th>


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
                                <td><img src="pic/<%= alumni1.getImg()%>" width="100px" height="100px" alt="Source not found"/></td>

                                <td><%= alumni1.getEmail().toUpperCase()%></td>
                                <td><%= alumni1.getName()%></td>
                                <td><%= alumni1.getEnrollment()%></td>


                                <td><%= alumni1.getOccupation()%></td>
                                <td><%= alumni1.getOrganisation()%></td>
                                <td><%= alumni1.getDesignation()%></td>


                                <td><%= alumni1.getContact()%></td>
                                <td><%= alumni1.getYear()%></td>

                                <td><%=alumni1.getRdate().toGMTString() %></td>
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


        <%@include file="alumni_footer.jsp" %>
    </body>
</html>
