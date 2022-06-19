<%-- 
    Document   : all-mentor
    Created on : Jun 19, 2022, 9:10:50 PM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:11 GMT -->
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
            <div class="breadcrumb-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-8 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Mentee List</li>
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Mentee List</h2>
                        </div>
                        <div class="col-md-4 col-12">
                            <form class="search-form custom-search-form">
                                <div class="input-group">
                                    <input type="text" placeholder="Search Mentees..." class="form-control">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div style="width: 100%">
                            <div class="row row-grid">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="card widget-profile user-widget-profile">
                                        <div class="card-body">
                                            <div class="pro-widget-content">
                                                <div class="profile-info-widget">
                                                    <a href="profile-mentee.html" class="booking-user-img">
                                                        <img src="assets/img/user/user.jpg" alt="User Image">
                                                    </a>
                                                    <div class="profile-det-info">
                                                        <h3><a href="profile-mentee.html">Richard Wilson</a></h3>
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
                                                    <a href="profile-mentee.html" class="booking-user-img">
                                                        <img src="assets/img/user/user1.jpg" alt="User Image">
                                                    </a>
                                                    <div class="profile-det-info">
                                                        <h3><a href="profile-mentee.html">Charlene Reed</a></h3>
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


            <footer class="footer">

                <div class="footer-top">
                    <div class="container">
                        <div class="subsccribe-item">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="subscribe-item">
                                        <div class="section-title">
                                            <h2>Sign Up For Newsletter</h2>
                                            <p>Join 60.000+ Subscribers</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="subscribe-item">
                                        <form class="newsletter-form">
                                            <input type="email" class="form-control" placeholder="Enter your email" autocomplete="off">
                                            <button class="btn cmn-btn" type="submit"><i class="fas fa-paper-plane me-2"></i>Subscribe Now</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-about">
                                    <h2 class="footer-title">About Mentoring</h2>
                                    <div class="footer-about-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris </p>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Mentee</h2>
                                    <ul>
                                        <li><a href="search.html">Search Mentors</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="booking.html">Booking</a></li>
                                        <li><a href="dashboard-mentee.html">Mentee Dashboard</a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Mentors</h2>
                                    <ul>
                                        <li><a href="appointments.html">Appointments</a></li>
                                        <li><a href="chat.html">Chat</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="dashboard.html">Mentor Dashboard</a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-social">
                                    <h2 class="footer-title">Instagram</h2>
                                    <div class="footer-social-info d-block">
                                        <div class="footer-insta-info">
                                            <div><img src="assets/img/course/1.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/2.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/3.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/3.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/6.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/2.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/4.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/5.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/6.jpg" alt="" class="img-fluid"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer-bottom">
                    <div class="container">

                        <div class="copyright">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="copyright-text text-start">
                                        <p>Terms - Privacy Policy & Safety - Send feedback</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="copyright-text text-md-end">
                                        <p>&copy; 2020 Mentoring. All rights reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:15 GMT -->
</html>
