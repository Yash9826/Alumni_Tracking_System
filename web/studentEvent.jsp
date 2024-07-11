<%-- 
    Document   : studentEvent
    Created on : May 2, 2024, 12:17:39 PM
    Author     : yashc
--%>

<%@page import="dao.AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Event"%>
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
        
        <%@include file="student_navbar.jsp" %>
        
        
         <!--details of all events start-->

        <div class="container mt-5 primary-color">
            <div class="card text-center ">
                <div class="card-header primary-background">
                    <font style="color: white">All Events</font>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">S.No</th>
                               
                                <th scope="col">Name</th>
                                <th scope="col">Location</th>
                                <th scope="col">Date</th>
                                <th scope="col">Image</th>


                            </tr>
                        </thead>
                        <tbody>

                           <%         
                                AdminDAO dao1 = new AdminDAO(ConnectionProvider.getConnection());
                                ArrayList<Event> list1 = dao1.getAllEvent();
                                int count=1;
                                for(Event event1: list1) 
                                {
                                 
                            %>
                            <tr>
                                <th scope="row"><%= count %></th>
                              
                                <td><%= event1.getEname() %></td>
                                <td><%= event1.getElocation()  %></td>
                                <td><%=event1.getEdate() %></td>
                                <td><img src="pic/<%=event1.getEimage() %>"+ width="200px" height="200px" alt="Source not found" /></td>

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

        <!--details of all events ends-->
        
        
         <%@include file="student_footer.jsp" %>
        
    </body>
</html>
