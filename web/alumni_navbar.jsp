



<!--Admin Navbar starting-->

<!-- Navbar As a heading -->
<div class="container py-3 py-lg-3  ">
    <div class="row ">
        </br>
        <div class="col-sm-8 primary-color"><font color="dodgerblue">
            <h2><span class="fa fa-graduation-cap mt-4 ">
                    <b>ALUMNI TRACKING</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        SYSTEM</b></span></h2></font>
        </div>

        <div class=" input-group col-sm-4 mt-2 py-4 " >

            <input type="text" class="form-control" placeholder="Search" >
            <div class="input-group-append">
                <button class="btn inline-block " type="button">
                    <i class="fa fa-search"></i>
                </button>
            </div>

        </div>
    </div>
</div>
<!--navbar haeding ending-->


<!--navbar content starts-->
<nav class="navbar navbar-expand-lg navbar-dark primary-background ">
    <div class="container">

        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav">


                <li class="nav-item active">
                    <a class="nav-link" href="alumniIndex.jsp">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown active ">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;ALUMNI DATA
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="alumniViewAlumni.jsp">View Alumni</a>


                    </div>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;EVENTS
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="alumniEvent.jsp">View</a>
                    </div>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle"  id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;GALLARY
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!--                                <a class="dropdown-item" href="#">Upload Photo</a>-->
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="alumniViewGallary.jsp">View Gallary</a>
                    </div>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;CONTRIBUTE
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!--                                <a class="dropdown-item" href="adminEvent.jsp">View Your</a>-->
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="alumniPosting.jsp">Job/Interships Postings</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="alumniViewPost.jsp">View Jobs/Internships</a>

                    </div>
                </li>

                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;MY ACCOUNT
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="alumniEdit.jsp">Update Profile</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="AlumniLogoutServlet">Logout</a>
                    </div>
                </li>


            </ul>

        </div>
    </div>

</nav>
<!--Admin navbar content ends-->


