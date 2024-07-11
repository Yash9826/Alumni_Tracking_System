<%-- 
    Document   : studentIndex
    Created on : May 2, 2024, 11:12:56 AM
    Author     : yashc
--%>

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
       
        <!--grid of images-->
<div class="container imgContainer mt-4 primary-background">

    <div class="left">
        <img src="img/alumni 1.jpg" alt="alt"/>
    </div>

    <div class="right">
        <div class="right-img">
                <div class="right-top">
                <img src="img/alumni 2.jpg" alt="alt"/>
                <img src="img/alumni 3.jpg" alt="alt"/>
            </div>
            <div class="right-bottom">
                <img src="img/alumni 4.jpg" alt="alt"/>
                <img src="img/alumni 5.jpg" alt="alt"/>
            </div>

        </div>
    </div>






</div>
<!--grid of images end-->

        
         <%@include file="student_footer.jsp" %>
    </body>
</html>
