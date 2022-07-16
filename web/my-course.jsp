<%-- 
    Document   : mycourse
    Created on : Jul 15, 2022, 12:04:56 AM
    Author     : ADMIN
--%>

<%@page import="model.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <%@include file="header.jsp" %>

        <section class="popular-course-section">
            <div class="container">
                <div class="section-heading d-flex align-items-center">
                    <div class="heading-content">
                        <h2><span class="text-weight">My</span> Courses <span class="header-right"></span></h2>
                    </div>
                </div>
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
                        
                    </div>
                </div>
                <div class="row">  
                    <c:forEach items="${mycourse}" var="x">
                        <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">

                            <div class="popular-course" style="cursor: pointer">
                                <a href="TotalLesson?id=${x.cid}">
                                    <div class="courses-head">
                                        <div class="courses-img-main">
                                            <img src="assets/img/course/${x.thumbnail}" alt="" class="img-fluid w-100">
                                        </div>
                                        <div class="courses-aut-img">
                                            <img src="assets/img/user/${x.profile_picture}" alt="">
                                        </div>
                                    </div>
                                    <div class="courses-body">
                                        <div class="courses-ratings">
                                            <ul class="mb-1"> 
                                                <c:forEach begin = "1" end = "${x.rated_star}">
                                                    <li><i class="fas fa-star checked"></i>
                                                    </li> 
                                                </c:forEach>
                                            </ul>
                                            <p class="mb-1">${x.last_name} ${x.first_name}</p>
                                            <h4 class="mb-0">
                                                <a>${x.title} </a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="courses-border"></div>
                                    <div class="courses-footer d-flex align-items-center">
                                        <div class="courses-count">
                                            <ul class="mb-0">
                                                <li><i class="fas fa-user-graduate me-1"></i> ${x.total_register_number}</li>
                                                <li><i class="far fa-file-alt me-1"></i>2</li>
                                            </ul>
                                        </div>
                                         <div class="courses-amt ms-auto">
                                            <h3 class="mb-0">$ ${x.price}</h3>
                                        </div>       
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            
            </div>
        </section>
        <%@include file="footer.jsp" %> 
    </body>
    <script>
        function toogleSuggestSearch() {
            var x = document.getElementById("suggest");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
</html>
