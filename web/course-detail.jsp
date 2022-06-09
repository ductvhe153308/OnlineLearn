<%-- 
    Document   : course-detail
    Created on : Jun 8, 2022, 10:42:07 PM
    Author     : DuongHoangLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <div class="header-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="left-top">
                                <ul>
                                    <li><i class="fas fa-map-marker-alt top-icon"></i> 123, washington street, uk</li>
                                    <li><i class="fas fa-phone-volume top-icon"></i> +19 123-456-7890</li>
                                    <li><i class="fas fa-envelope top-icon"></i> <a href="https://mentoring-html.dreamguystech.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="412c20282d01382e3433252e2c20282f6f222e2c">[email&#160;protected]</a></li>
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
                            <a href="home.jsp" class="navbar-brand logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="home.jsp" class="menu-logo">
                                    <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li>
                                    <a href="home.jsp">Home</a>
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
                                        <li><a href="mentor-register.html">Mentor Register</a></li>
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
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="#">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.jsp">Blog List</a></li>
                                        <li class="active"><a href="blog-grid.jsp">Blog Grid</a></li>
                                        <li><a href="blog-details.jsp">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/home.jsp" target="_blank">Admin</a>
                                </li>
                                <li class="login-link">
                                    <a href="login.html">Login / Signup</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">

                            <li class="nav-item dropdown has-arrow logged-item">
                                <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img class="rounded-circle me-2" src="assets/img/user/user.jpg" width="31" alt="Darren Elder">Jonathan Doe
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <div class="user-header">
                                        <div class="avatar avatar-sm">
                                            <img src="assets/img/user/user.jpg" alt="User Image" class="avatar-img rounded-circle">
                                        </div>
                                        <div class="user-text">
                                            <h6>Jonathan Doe</h6>
                                            <p class="text-muted mb-0">Mentor</p>
                                        </div>
                                    </div>
                                    <a class="dropdown-item" href="dashboard.html">Dashboard</a>
                                    <a class="dropdown-item" href="profile-settings.html">Profile Settings</a>
                                    <a class="dropdown-item" href="login.html">Logout</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </nav>
            </header>
        
        
        
        
        
        
        
        
        
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
    </body>
</html>
