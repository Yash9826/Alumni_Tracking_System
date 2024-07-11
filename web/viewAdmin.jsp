<%-- 
    Document   : viewAdmin
    Created on : Feb 23, 2024, 5:10:02 PM
    Author     : yashc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="helper.ConnectionProvider"%>
<%@page import="dao.AdminDAO"%>
<%@page import="dto.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

//     Admin admin  = new Admin();
////     admin = (Admin)session.getAttribute("currentAdmin");

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



        <!--details of all admins start-->

        <div class="container mt-5 primary-color">
            <div class="card text-center ">
                <div class="card-header primary-background">
                    <font style="color: white">All Admin</font>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">S.No</th>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Registration Date</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%          AdminDAO admin = new AdminDAO(ConnectionProvider.getConnection());
                                ArrayList<Admin> list = admin.getAllAdmin();
                                int count=1;
                                for(Admin admin1: list) 
                                {
                                 
                            %>
                            <tr>
                                <th scope="row"><%= count %></th>
                                <td><%= admin1.getId()%></td>
                                <td><%= admin1.getName()%></td>
                                <td><%= admin1.getEmail()%></td>
                                <td><%=admin1.getContact()%></td>
                                <td><%=admin1.getRdate().toLocaleString() %></td>
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

        <!--details of all admins ends-->



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
