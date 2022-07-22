<%-- 
    Document   : right-navbar.jsp
    Created on : Jul 16, 2022, 3:08:16 PM
    Author     : dell
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
        <style>
            .right-navbar > .main-nav>li>a {
                font-size: 20px !important;
                font-weight: bold !important;
                line-height: 50px !important;
            }
            .right-navbar > .main-nav>li {
                padding: 20px;
                width: 100%
            }
            .right-navbar > .main-nav> li:hover {
                background-color: #FFCB55 !important;
            }
            .right-navbar > .main-nav{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="right-navbar" style="width: 100%; height: 100%; background: #FFB100">
                <ul class="main-nav" style="display: flex; flex-direction: column;">
                    <li class="has-submenu" style="border: 1px solid white;">
                        <a href="TotalLesson?id=${id}" style="color: white;">Overview</a>
                    </li>
                    <li class="" style="border: 1px solid white;">
                        <a href="QuizResult?id=${id}" style="color: white;">Grades</a>
                    </li>
                </ul>
            </div>
        </div>
        

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:33 GMT -->
</html>