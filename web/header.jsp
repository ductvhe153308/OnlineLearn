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
                        <c:choose>
                            <c:when test="${sessionScope.user.role_id == 2}">
                                <ul class="main-nav">
                                    <li class="active">
                                        <a href="home">Home</a>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="CourseList">Course <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="CourseList">Course list</a></li>
                                            <li><a href="course-trending.jsp">Course trending</a></li>
                                            <li><a href="CourseTopRate">Course top rated</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="MentorList">Mentor <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="MentorList">Mentor list</a></li>
                                            <li><a href="MentorBestRate">Mentor best rate</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="BlogList">Blog <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="BlogList">Blog list</a></li>
                                            <li><a href="blog-create.jsp">New blog</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="BlogList">Other <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="terms.jsp">Terms</a></li>
                                            <li><a href="privacy-policy-and-safety.jsp">Privacy Policy</a></li>
                                            <li><a href="send-feedback.jsp">Send feedback</a></li>
                                        </ul>
                                    </li>
                                    <li class="login-link">
                                        <a href="account">Login / Sign up</a>
                                    </li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <ul class="main-nav">
                                    <li class="active">
                                        <a href="home">Home</a>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="CourseList">Course <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="CourseList">Course list</a></li>
                                            <li><a href="course-trending.jsp">Course trending</a></li>
                                            <li><a href="CourseTopRate">Course top rated</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="MentorList">Mentor <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="MentorList">Mentor list</a></li>
                                            <li><a href="MentorBestRate">Mentor best rate</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="BlogList">Blog <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="BlogList">Blog list</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="BlogList">Other <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="terms.jsp">Terms</a></li>
                                            <li><a href="privacy-policy-and-safety.jsp">Privacy Policy</a></li>
                                            <li><a href="send-feedback.jsp">Send feedback</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="admin/dashboard">Admin</a>
                                    </li>
                                    <li class="login-link">
                                        <a href="account">Login / Sign up</a>
                                    </li>
                                </ul>
                            </c:otherwise>
                        </c:choose>

                    </div>

                    <c:choose>
                        <c:when test="${sessionScope.user != null}">
                            <c:choose>
                                <c:when test="${user.role_id == 2}">
                                    <ul class="nav header-navbar-rht">
                                        <div class="main-menu-wrapper">
                                            <ul class="main-nav">
                                                <li class="has-submenu">
                                                    <a> <image src="assets/img/user/${user.pfp}" style="width: 40px;height: 40px;border-radius: 50%;margin-right:10px"/>
                                                        ${email}<i class="fas fa-chevron-down"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="UserProfile?id=${user.aid}">My profile</a></li>
                                                        <li><a href="BlogByAuthor">My blog</a></li>
                                                        <li><a href="MyFeedback">My feedback</a></li>
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
                                        <div class="main-menu-wrapper">
                                            <ul class="main-nav">
                                                <li class="has-submenu">
                                                    <a> <image src="assets/img/user/${user.pfp}" style="width: 40px;height: 40px;border-radius: 50%;margin-right:10px"/>
                                                        ${email}<i class="fas fa-chevron-down"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="UserProfile?id=${user.aid}">My profile</a></li>
                                                        <li><a href="MyCourse">My course</a></li>
                                                        <li><a href="MyPurchase">My purchase</a></li>
                                                        <li><a href="MyAccomplishment">My accomplishment</a></li>
                                                        <li><a href="MyFeedback">My feedback</a></li>
                                                        <li><a href="changePassword">Change password</a></li>
                                                        <li><a href="logout">Sign out</a></li>
                                                    </ul> 
                                                </li>
                                            </ul>
                                        </div>   
                                    </ul>
                                </c:otherwise>
                            </c:choose>      
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

