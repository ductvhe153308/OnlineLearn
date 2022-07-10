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
    </body>
</html>
