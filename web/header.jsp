<%-- 
    Document   : header
    Created on : Jun 6, 2022, 7:50:00 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:09 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <div class="header-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="left-top">
                            <ul>
                                <li><i class="fas fa-map-marker-alt top-icon"></i>FPT University, Hoa Lac Hi-Tech Park, Thach That, Hanoi, Vietnam</li>
                                <li><i class="fas fa-phone-volume top-icon"></i> +84-915021248</li>
                                <li><i class="fas fa-envelope top-icon"></i> <a href="https://mentoring-html.dreamguystech.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="0d606c64614d7462787f6962606c6463236e6260">truonghdhe140305@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="right-top">
                            <ul>
                                <li>
                                    <a href="#"><i class="fab fa-facebook-f top-icons"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-instagram top-icons"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-linkedin-in top-icons"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-twitter top-icons"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <header class="header">
            <nav class="navbar navbar-expand-lg header-nav">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a id="mobile_btn" href="javascript:void(0);">
                            <span class="bar-icon">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </a>
                        <a href="index.html" class="navbar-brand logo">
                            <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                        </a>
                    </div>
                    <div class="main-menu-wrapper">
                        <div class="menu-header">
                            <a href="index.html" class="menu-logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                            <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                <i class="fas fa-times"></i>
                            </a>
                        </div>
                        <ul class="main-nav">
                            <li class="active">
                                <a href="index.html">Home</a>
                            </li>
                            <li class="has-submenu">
                                <a href="#">Mentor <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="dashboard.html">Mentor Dashboard</a></li>
                                    <li><a href="bookings.html">Bookings</a></li>
                                    <li><a href="schedule-timings.html">Schedule Timing</a></li>
                                    <li><a href="mentee-list.html">Mentee List</a></li>
                                    <li><a href="profile-mentee.html">Mentee Profile</a></li>
                                    <li class="has-submenu">
                                        <a href="blog.html">Blog</a>
                                        <ul class="submenu">
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="blog-details.jsp">Blog View</a></li>
                                            <li><a href="add-blog.html">Add Blog</a></li>
                                            <li><a href="edit-blog.html">Edit Blog</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="chat.html">Chat</a></li>
                                    <li><a href="invoices.html">Invoices</a></li>
                                    <li><a href="profile-settings.html">Profile Settings</a></li>
                                    <li><a href="reviews.html">Reviews</a></li>
                                    <li><a href="mentor-recover.jsp">Mentor Register</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">Mentee <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li class="has-submenu">
                                        <a href="#">Mentors</a>
                                        <ul class="submenu">
                                            <li><a href="map-grid.html">Map Grid</a></li>
                                            <li><a href="map-list.html">Map List</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="search.html">Search Mentor</a></li>
                                    <li><a href="profile.html">Mentor Profile</a></li>
                                    <li><a href="bookings-mentee.html">Bookings</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="booking-success.html">Booking Success</a></li>
                                    <li><a href="dashboard-mentee.html">Mentee Dashboard</a></li>
                                    <li><a href="favourites.html">Favourites</a></li>
                                    <li><a href="chat-mentee.html">Chat</a></li>
                                    <li><a href="profile-settings-mentee.html">Profile Settings</a></li>
                                    <li><a href="change-password.html">Change Password</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">Pages <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="voice-call.html">Voice Call</a></li>
                                    <li><a href="video-call.html">Video Call</a></li>
                                    <li><a href="search.html">Search Mentors</a></li>
                                    <li><a href="components.html">Components</a></li>
                                    <li class="has-submenu">
                                        <a href="invoices.html">Invoices</a>
                                        <ul class="submenu">
                                            <li><a href="invoices.html">Invoices</a></li>
                                            <li><a href="invoice-view.html">Invoice View</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="blank-page.html">Starter Page</a></li>
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="recover.jsp">Register</a></li>
                                    <li><a href="forgot-password.html">Forgot Password</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">Blog <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="blog-list.jsp">Blog List</a></li>
                                    <li><a href="blog-grid.jsp">Blog Grid</a></li>
                                    <li><a href="blog-details.jsp">Blog Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="admin/index.html" target="_blank">Admin</a>
                            </li>
                            <li class="login-link">
                                <a href="login.jsp">Login / Signup</a>
                            </li>
                        </ul>
                    </div>
                    <ul class="nav header-navbar-rht">
                        <li class="nav-item">
                            <a class="nav-link header-register" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link header-login" href="recover.jsp">Register</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:33 GMT -->
</html>

