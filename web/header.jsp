<%-- 
    Document   : header
    Created on : Jun 6, 2022, 7:50:00 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:09 GMT -->
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
                                <li><i class="fas fa-map-marker-alt top-icon"></i> FPT University, Hoa Lac Hi-Tech Park, Hanoi</li>
                                <li><i class="fas fa-phone-volume top-icon"></i> +84915021248</li>
                                <li><i class="fas fa-envelope top-icon"></i> 
                                    truonghdhe140305</li>
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
                            <li class="active">
                                <a href="home">Home</a>
                            </li>
                            <li>
                                <a href="all-course.jsp">Course</a>
                            </li>
                            <li class="has-submenu">
                                <a href="all-mentor.jsp">Mentor <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="all-mentor.jsp">Mentor list</a></li>
                                    <li><a href="mentor-register.jsp">Mentor register</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">Blog <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="blog-list.jsp">Blog list</a></li>
                                    <li><a href="blog-grid.jsp">Blog grid</a></li>
                                    <li><a href="blog-details.jsp">Blog details</a></li>
                                    <li><a href="blog-create.jsp">Blog create new</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="admin/dashboard" target="_blank">Admin</a>
                            </li>
                            <li class="login-link">
                                <a href="account">Login / Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            <ul class="nav header-navbar-rht">
                                <div class="main-menu-wrapper">
                                    <ul class="main-nav">
                                        <li class="has-submenu">
                                            <a> <image src="assets/img/user/default.jpg" style="width: 40px;height: 40px;border-radius: 50%;margin-right:10px"/>
                                                ${user.email}<i class="fas fa-chevron-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="user-profile.jsp">My profile</a></li>
                                                <li><a href="">My course</a></li>
                                                <li><a href="">My purchase</a></li>
                                                <li><a href="">My blog</a></li>
                                                <li><a href="changePassword">Change password</a></li>
                                                <li><a href="logout">Sign out</a></li>
                                            </ul> 
                                        </li>
                                    </ul>
                                </div>   
                            </ul>
                        </c:when>
                        <c:otherwise>
                            <ul class="nav header-navbar-rht">
                                <li class="nav-item">
                                    <a class="nav-link header-register" href="account">Sign in</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link header-login" href="register_controller">Register</a>
                                </li>
                            </ul>
                        </c:otherwise>
                    </c:choose>
                </div>
            </nav>
        </header>
        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:33 GMT -->
</html>

