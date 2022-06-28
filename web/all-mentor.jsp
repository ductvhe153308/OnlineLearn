<%-- 
    Document   : all-mentor
    Created on : Jun 19, 2022, 9:10:50 PM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">

            <%@include file="header.jsp" %>
            <section class="popular-course-section">
                <div class="container">
                    <div class="breadcrumb-bar">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <div class="col-md-8 col-12">
                                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
<!--                                            <li class="breadcrumb-item active" aria-current="page">Mentor List</li>-->
                                        </ol>
                                    </nav>
                                    <h2 class="breadcrumb-title">Mentor List</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="sidebar-right theiaStickySidebar">
                                    <div class="card search-widget">
                                        <div class="card-body">
                                            <form class="search-form">
                                                <div class="input-group">
                                                    <input onfocus="toogleSuggestSearch()" onblur="toogleSuggestSearch()" type="text" placeholder="Search..." class="form-control">
                                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div id="suggest" style="display: none">
                                        <div class="card category-widget">
                                            <div class="card-header">
                                                <h4 class="card-title">Mentor Categories</h4>
                                            </div>
                                            <div class="card-body">
                                                <ul class="categories">
                                                    <li><a href="#">HTML <span>(62)</span></a></li>
                                                    <li><a href="#">Css <span>(27)</span></a></li>
                                                    <li><a href="#">Java Script <span>(41)</span></a></li>
                                                    <li><a href="#">Photoshop <span>(16)</span></a></li>
                                                    <li><a href="#">Wordpress <span>(55)</span></a></li>
                                                    <li><a href="#">VB <span>(07)</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card tags-widget">
                                            <div class="card-header">
                                                <h4 class="card-title">Tags</h4>
                                            </div>
                                            <div class="card-body">
                                                <ul class="tags">
                                                    <li><a href="#" class="tag">HTML</a></li>
                                                    <li><a href="#" class="tag">Css</a></li>
                                                    <li><a href="#" class="tag">Java Script</a></li>
                                                    <li><a href="#" class="tag">Jquery</a></li>
                                                    <li><a href="#" class="tag">Wordpress</a></li>
                                                    <li><a href="#" class="tag">Php</a></li>
                                                    <li><a href="#" class="tag">Angular js</a></li>
                                                    <li><a href="#" class="tag">React js</a></li>
                                                    <li><a href="#" class="tag">Vue js</a></li>
                                                    <li><a href="#" class="tag">Photoshop</a></li>
                                                    <li><a href="#" class="tag">Ajax</a></li>
                                                    <li><a href="#" class="tag">Json</a></li>
                                                    <li><a href="#" class="tag">C</a></li>
                                                    <li><a href="#" class="tag">C++</a></li>
                                                    <li><a href="#" class="tag">Vb</a></li>
                                                    <li><a href="#" class="tag">Vb.net</a></li>
                                                    <li><a href="#" class="tag">Asp.net</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div style="width: 100%">
                                    <div class="row row-grid">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="mentor-profile.jsp" class="booking-user-img">
                                                                <img src="assets/img/user/user.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3><a href="mentor-profile.jsp">Richard Wilson</a></h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 16</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Alabama, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 952 001 8563</span></li>
                                                            <li>Age <span>38 Years, Male</span></li>
                                                            <li>Blood Group <span>AB+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="mentor-profile.jsp" class="booking-user-img">
                                                                <img src="assets/img/user/user1.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3><a href="mentor-profile.jsp">Charlene Reed</a></h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 01</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> North Carolina, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 828 632 9170</span></li>
                                                            <li>Age <span>29 Years, Female</span></li>
                                                            <li>Blood Group <span>O+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="profile-mentee-2.html" class="booking-user-img">
                                                                <img src="assets/img/user/user2.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Travis Trimble </h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 02</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Maine, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 207 729 9974</span></li>
                                                            <li>Age <span>23 Years, Male</span></li>
                                                            <li>Blood Group <span>B+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user3.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Carl Kelly</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 03</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Indiana, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 260 724 7769</span></li>
                                                            <li>Age <span>32 Years, Male</span></li>
                                                            <li>Blood Group <span>A+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user4.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Michelle Fairfax</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 04</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Indiana, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 504 368 6874</span></li>
                                                            <li>Age <span>25 Years, Female</span></li>
                                                            <li>Blood Group <span>B+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user5.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Gina Moore</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 05</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Florida, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 954 820 7887</span></li>
                                                            <li>Age <span>25 Years, Female</span></li>
                                                            <li>Blood Group <span>AB-</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user6.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Elsie Gilley</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 06</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Kentucky, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 315 384 4562</span></li>
                                                            <li>Age <span>14 Years, Female</span></li>
                                                            <li>Blood Group <span>O-</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user7.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Joan Gardner</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 07</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> California, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 707 2202 603</span></li>
                                                            <li>Age <span>25 Years, Female</span></li>
                                                            <li>Blood Group <span>A-</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user8.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Daniel Griffing</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 07</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> New Jersey, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 973 773 9497</span></li>
                                                            <li>Age <span>28 Years, Male</span></li>
                                                            <li>Blood Group <span>O+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user9.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Walter Roberson</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 09</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Florida, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 850 358 4445</span></li>
                                                            <li>Age <span>28 Years, Male</span></li>
                                                            <li>Blood Group <span>A+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user10.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Robert Rhodes</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 10</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> California, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 858 259 5285</span></li>
                                                            <li>Age <span>19 Years, Male</span></li>
                                                            <li>Blood Group <span>B+</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="card widget-profile user-widget-profile">
                                                <div class="card-body">
                                                    <div class="pro-widget-content">
                                                        <div class="profile-info-widget">
                                                            <a href="#" class="booking-user-img">
                                                                <img src="assets/img/user/user11.jpg" alt="User Image">
                                                            </a>
                                                            <div class="profile-det-info">
                                                                <h3>Harry Williams</h3>
                                                                <div class="mentee-details">
                                                                    <h5><b>Mentee ID :</b> 11</h5>
                                                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Colorado, USA</h5>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mentee-info">
                                                        <ul>
                                                            <li>Phone <span>+1 303 607 7075</span></li>
                                                            <li>Age <span>9 Years, Male</span></li>
                                                            <li>Blood Group <span>A-</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog-pagination mt-4">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">1</a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">3</a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%@include file="footer.jsp" %> 

        </div>
        <script>
            function toogleSuggestSearch() {
                var x = document.getElementById("suggest");
                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }
            }
        </script>

        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:15 GMT -->
</html>
