<%-- 
    Document   : AdminViewGallary
    Created on : May 1, 2024, 7:08:55 PM
    Author     : yashc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="helper.ConnectionProvider"%>
<%@page import="dao.AdminDAO"%>
<%@page import="dto.Gallary"%>

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
        <!--include navbar-->
        <%@include file="admin_navbar.jsp" %>

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
                               <td><a href="adminGetEventById.jsp?id=<%= g1.getId() %>"  ><button  type="submit" class="submit-btn btn btn-outline-success">Edit</button></a></td>



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

        <!--details of all gallary ends-->




      
   







<!--include footer-->
<%@include file="admin_footer.jsp" %>

<!--bootstrap, jquery,javascript link-->
<script
    src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</html>
