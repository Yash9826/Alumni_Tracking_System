<%-- 
    Document   : alumniViewGallary
    Created on : May 1, 2024, 11:04:36 PM
    Author     : yashc
--%>

<%@page import="dto.Gallary"%>
<%@page import="dto.Gallary"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.AdminDAO"%>
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
        
        <%@include file="alumni_navbar.jsp" %>
        
        
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
        
        
        <%@include file="alumni_footer.jsp" %>
    </body>
</html>
