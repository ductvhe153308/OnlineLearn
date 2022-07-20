<%-- 
    Document   : mentor-list
    Created on : Jun 19, 2022, 9:10:50 PM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

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
                                            <form class="search-form" method="post" action="SearchMentor">
                                                <div class="input-group">
                                                    <input value="${searchName}" name="searchByName" type="text" placeholder="Search by Mentor name" class="form-control">
                                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div style="width: 100%">
                                    <div class="row row-grid">
                                        <c:forEach items="${list}" var="x">
                                            <div class="col-md-6 col-lg-4 col-xl-3">
                                                <a href="MentorDetail?id=${x.aid}">
                                                    <div class="card widget-profile user-widget-profile">
                                                        <div class="card-body">
                                                            <div class="pro-widget-content">
                                                                <div class="profile-info-widget">
                                                                    <div class="booking-user-img">
                                                                        <img src="assets/img/user/${x.pfp}" alt="User Image">
                                                                    </div>
                                                                    <div class="profile-det-info">
                                                                        <h3>${x.first_name} ${x.last_name}</h3>
                                                                        <div class="mentee-details">
                                                                            <h5><b>Mentor ID :</b> ${x.aid}</h5>
                                                                            <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Alabama, USA</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="mentee-info">
                                                                <ul style="text-transform:none">
                                                                    <li>Phone <span> ${x.phone}</span></li>
                                                                    <li>DOB <span>${x.dob}</span></li>
                                                                    <li>Gender <span>
                                                                            <c:if test="${x.gender == 0}">Male</c:if>
                                                                            <c:if test="${x.gender == 1}">Female</c:if>
                                                                    </span></li>
                                                                    <li>Email <span class="info"> ${x.email}</span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="blog-pagination mt-4">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                                <c:if test="${tag >1}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="MentorList?index=${tag-1}" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
                                                    </li>
                                                </c:if>
                                                <c:forEach begin = "1" end = "${endP}" var = "i">
                                                    <li class="page-item ${tag==i?"active":""} ">
                                                        <a class="page-link  " href="MentorList?index=${i}">${i}</a>
                                                    </li>   
                                                </c:forEach>

                                                <c:if test="${tag <c.numberPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="MentorList?index=${tag+1}"><i class="fas fa-angle-double-right"></i></a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%@include file="footer.jsp" %> 

        </div>

        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:15 GMT -->
</html>
