<%-- 
    Document   : course-detail
    Created on : Jun 8, 2022, 10:42:07 PM
    Author     : DuongHoangLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:23 GMT -->
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
    <style>
        .header-course-detail{
            color: white !important;
        }
    </style>
    <body>

        <div class="main-wrapper">

            <%@include file="header.jsp" %>

            <div class="content">
                <div class="container-fluid">

                    <form id="enroll" action="EnrollCourse" method="POST">
                        <input type="text" name="cid" value="${course_id}" hidden>
                        <div class="row header-course-detail" style="background-image: linear-gradient(90deg, rgb(140, 21, 21), rgb(210, 194, 149)); padding: 0 0 50px 100px;">
                            <div class="courses-body" style="color: white; text-align: start; display: flex; flex-direction: row" >
                                <div style="width: 60%">
                                    <h4 style="color: white; padding-bottom: 20px">
                                        <a href="CourseList" style="color: white">Course</a> > Category 
                                    </h4>
                                    <h1 style="color: white;">
                                        ${title}
                                    </h1>
                                    <div class="courses-ratings">
                                        <ul class="mb-1">
                                            <c:forEach begin = "1" end = "${rate}">
                                                <li><i class="fas fa-star checked"></i>
                                                </li> 
                                            </c:forEach>
                                        </ul>
                                    </div>
                                    <div style="display: flex; flex-direction: row; align-items: center; padding-top: 50px">
                                        <div>
                                            <img style="border-radius: 50%;
                                                 width: 60px;
                                                 margin: auto;
                                                 height: 60px;" src="assets/img/user/${author_img}" alt="">
                                        </div>
                                        <p style="color: white; padding-left: 20px; font-size: 22px">${author}</p>
                                    </div>
                                </div>
                                <div>
                                    <h4 style="color: white; padding-bottom: 20px">
                                        Offered By
                                    </h4>
                                    <div class="navbar-brand logo" style="background-color: white; padding: 10px">
                                        <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                                    </div>
                                </div>

                            </div>
                            <div style="padding: 20px">
                                <c:choose>
                                    <c:when test="${sessionScope.user != null}">
                                        <c:choose>
                                            <c:when test="${not empty cid}">
                                                <a class="btn btn-primary" style="background-color: #55acee; width: 200px" role="button">                          
                                                    <span style="display: block; font-size: 22px">
                                                        You've already enrolled this course
                                                    </span>
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <a class="btn btn-primary" style="background-color: #55acee; width: 200px" href="TotalLesson?id=${course_id}" role="button" onclick="document.getElementById('enroll').submit()">                          
                                                    <span style="display: block; font-size: 22px">
                                                        Enroll 
                                                    </span>
                                                    <span>
                                                        Start in
                                                        <span id="monthNow"></span>
                                                        <span id="dateNow"></span>
                                                    </span>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>

                                    </c:when>
                                    <c:otherwise>
                                        <a class="btn btn-primary" style="background-color: #55acee; width: 200px" href="login.jsp" role="button">                          
                                            <span style="display: block; font-size: 22px">
                                                Enroll 
                                            </span>
                                            <span>
                                                Start in
                                                <span id="monthNow"></span>
                                                <span id="dateNow"></span>
                                            </span>
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                                <span style="display: block; padding-top: 20px">${total_register} people already enrolled</span>
                            </div>
                        </div>
                    </form> 
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="blog-view">
                                <div class="card author-widget clearfix">
                                    <div class="card-header">
                                        <h4 class="card-title">About Author</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="about-author">
                                            <div class="about-author-img">
                                                <div class="author-img-wrap">
                                                    <a href="MentorDetail?id=${author_id}"><img class="img-fluid rounded-circle" alt="" src="assets/img/user/${author_img}"></a>
                                                </div>
                                            </div>
                                            <div class="author-details">
                                                <a href="MentorDetail?id=${author_id}" class="blog-author-name">${author}</a>
                                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <%@include file="footer.jsp" %>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
        <script>
                                                    var d = new Date();
                                                    var monthNow = d.toLocaleString('default', {month: 'long'});
                                                    document.getElementById("monthNow").innerHTML = monthNow;
                                                    document.getElementById("dateNow").innerHTML = d.getDate();
        </script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:24 GMT -->
</html>
