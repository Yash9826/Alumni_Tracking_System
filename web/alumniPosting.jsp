<%-- 
    Document   : alumniPosting
    Created on : Apr 30, 2024, 6:04:28 PM
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
        
        <%@include file="alumni_navbar.jsp" %>
        
        
        <!--Alumni posting starts-->
        <form method="POST" action="alumniPostingServlet" id="post-alumni"  >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Post Positions</font>
                    </div>



                    <div class="card-body primary-color">
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Company Name</label>
                            <input name="name" type="text" class="form-control"  placeholder="Enter Name of the Company" maxlength="20" required>
                        </div>


                        <div class="form-group text-left">


                            <label for="#" class="text-left">Position Description</label>
                            <textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Enter here..."></textarea>

                        </div>

                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <div class="form-group text-left">
                                    <label for="#" class="text-left">Position Type</label>
                                    <select name=pType id="inputState" class="form-control">
                                        <option>Java Developer</option>
                                        <option>PHP Developer</option>
                                        <option>React Developer</option>
                                        <option>Game Developer</option>
                                        <option>Personality Development</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Link to access</label>
                                <input name="link" type="text" class="form-control"  placeholder="provide any links" required maxlength="500" value="" >
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Salary</label>
                                <input name="salary" type="text" class="form-control"  placeholder="Enter Salary" required maxlength="10">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputState">Mode</label>
                                <select name=mode id="inputState" class="form-control">
                                    <option>Online</option>
                                    <option>Offline</option>
                                </select>
                            </div>

                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label >Locations</label>
                                <input name="locations" type="text" class="form-control"  placeholder="Enter Locations" required maxlength="100">

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Duration</label>
                                <input name="duration" type="text" class="form-control" placeholder="Enter Duration" required maxlength="50">
                            </div>
                        </div>

                    </div>

                    <div class="card-footer primary-color text-left mt-4">
                        <div class="container text-center" id="loader" style="display: none;">
                            <span class="fa fa-refresh fa-spin fa-3x"></span>
                            <h3>Please Wait...</h3>
                        </div>
                        <button  type="submit" class="submit-btn btn btn-outline-success">Click here to Post</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<!--Alumni posting ends-->




<%@include file="alumni_footer.jsp" %>


<!--bootstrap jquery,javascript link-->
<script
    src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- 
     <script>

             $(document).ready(function () {
                console.log("loaded");

                $('#post-alumni').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();

                    // sending alumniPostingServlet 

                    $.ajax({
                        url: "alumniPostingServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                {
                                    swal("Succesfully Registered Alumni! we are redirecting to Home page.")
                                    //swal("Good job!", "Succesfully Posted Position!", "success")
                                            .then((value) => {
                                                window.location = "adminIndex.jsp";
                                            });

                                }
                            }
                     
                            else
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

       
        
                                    



</script> 
-->

</body>
</html>
