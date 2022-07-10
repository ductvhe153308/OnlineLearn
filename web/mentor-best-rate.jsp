<%-- 
    Document   : mentor-best-rate
    Created on : Jul 10, 2022, 9:28:06 PM
    Author     : DuongHoangLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="m" class="dal.AccountDAO" scope="request"></jsp:useBean>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
            <title>Mentoring</title>

            <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

            <link rel="stylesheet" href="assets/css/bootstrap.min.css">

            <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
            <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

            <link rel="stylesheet" href="assets/css/style.css">
            <style>
                .info{
                    text-transform: none !important;
                }
            </style>
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
    </body>
</html>
