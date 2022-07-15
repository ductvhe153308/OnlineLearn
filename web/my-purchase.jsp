<%-- 
    Document   : my-purchase
    Created on : Jul 16, 2022, 12:39:50 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-grid.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
    <head>
        <jsp:useBean id="c" class="dal.CourseDAO" scope="request"></jsp:useBean>
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
                        <div class="col-md-12 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                    <!--                                    <li class="breadcrumb-item active" aria-current="page">Blog</li>-->
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">My Purchase</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div style="display: flex; justify-content: center; align-content: center; margin-top: 50px;">
                <h1>Total Price: ${total_price}</h1>
            </div>
            <div>
                <c:forEach items="${purchase}" var="x">
                    <div style="width: 100%; height: fit-content; padding: 30px 200px">
                        <a>
                            <div style="background-image: linear-gradient(90deg, rgb(140, 21, 21), rgb(210, 194, 149))">
                                <div class="courses-body" style="color: white; text-align: start; display: flex; flex-direction: row" >
                                    <div style="width: 80%">
                                        <h1 style="color: white;">
                                            ${x.title}
                                        </h1>
                                        <div class="courses-ratings">
                                            <ul class="mb-1">
                                                <c:forEach begin = "1" end = "${x.rated_star}">
                                                    <li><i class="fas fa-star checked"></i>
                                                    </li> 
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div style="display: flex; flex-direction: row; align-items: center; padding-top: 20px">
                                            <div>
                                                <img style="border-radius: 50%;
                                                     width: 60px;
                                                     margin: auto;
                                                     height: 60px;" src="assets/img/user/${x.profile_picture}" alt="">
                                            </div>
                                            <p style="color: white; padding-left: 20px">${x.last_name} ${x.first_name}</p>
                                        </div>
                                        <div style="padding-top: 20px"><span>Start in July 6, 2022</span> <span> - End in July 7, 2022</span></div>
                                    </div>
                                    <div>
                                        <h4 style="color: white; padding-bottom: 20px">
                                            Offered By 
                                        </h4>
                                        <div class="navbar-brand logo" style="background-color: white; padding: 10px;">
                                            <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                                        </div>
                                        <div style="color: white; padding-top: 50px">
                                            <div class="courses-amt ms-auto">
                                                <h3 class="mb-0">Price: $ ${x.price}</h3>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </a>
                    </div>
                </c:forEach>
            </div>
            <%@include file="footer.jsp" %>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-grid.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:39 GMT -->
</html>
