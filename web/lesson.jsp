<%-- 
    Document   : lesson
    Created on : Jul 16, 2022, 3:03:19 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            .course-navbar a{
                display: block;
                padding-bottom: 50px;
            }
        </style>
    </head>
</head>
<body>
    <div class="main-wrapper">
        <%@include file="header.jsp" %>
        <div style="display: flex; flex-direction: row">
            <div style="width: 220px">
                <%@include file="right-navbar.jsp" %>
            </div>
            <div style="width: calc(100% - 220px)">
                <div class="row">
                    <div class="col-lg-8 col-md-12">
                        <div class="blog-view">
                            <div class="blog blog-single-post">
                                <h1>Lesson ${order}: ${title}</h1>
                                <div class="blog-image" style="padding-top: 50px">
                                    <iframe width="100%" height="500" src="${x.video}" title="Mentoring" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                <div class="blog-content" style="font-size: 18px;">
                                    <h3>Subtitle: </h3>
                                    ${x.subtitle}                                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>
