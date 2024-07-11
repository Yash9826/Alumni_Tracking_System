<%-- 
    Document   : adminAddCourse
    Created on : Feb 25, 2024, 9:25:54 PM
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

    </head>
    <body>
        <!--include navbar-->
        <%@include file="admin_navbar.jsp" %>



        <!--adding course name starts-->
        <form method="POST" action="adminAddCourseServlet" id="add-course">
            <div class="container mt-5   primary-color ">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Add Course</font>
                    </div>



                    <div class="card-body primary-color">


                        <div class="form-group text-left">
                            <label for="courseName">Course name</label>
                            <input name="name" type="text" class="form-control"  placeholder="Enter Course Name" required>
                            <small  class="form-text text-muted">Enter valid course</small>

                        </div>
                        <div class="card-footer primary-color text-left mt-4">
                            <div class="container text-center" id="loader" style="display: none;">
                                <span class="fa fa-refresh fa-spin fa-3x"></span>
                                <h3>Please Wait...</h3>
                            </div>
                            <button  type="submit" class="submit-btn btn btn-outline-success">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--adding course name ends-->


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
<!--        <script>

            $(document).ready(function () {
                console.log("loaded");

                $('#add-course').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();

                    // sending adminAddCourseServlet 

                    $.ajax({
                        url: "adminAddCourseServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                {
                                    swal(" Succesfully Registered Event! we are redirecting to Home page.")
                                            .then((value) => {
                                                window.location = "adminIndex.jsp";
                                            });

                                }
                            } else
                            {
                                swal(data);
                                swal("Something went wrong.Please try again later!");
                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong.Please try again later!");




                        },
                        processData: false,
                        contentType: false

                    });



                });
            });
        </script>-->
    </body>
</html>
