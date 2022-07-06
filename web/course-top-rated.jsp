<%-- 
    Document   : course-top-rated
    Created on : Jul 4, 2022, 9:21:52 PM
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
                        <h2><span class="text-weight">Top Rated</span> Courses <span class="header-right"></span></h2>
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
                        <div id="suggest" style="display: none">
                            <div class="card category-widget">
                                <div class="card-header">
                                    <h4 class="card-title">Course Categories</h4>
                                </div>
                                <div class="card-body">
                                    <ul class="categories">
                                        <li><a href="#">HTML <span>(62)</span></a></li>
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
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">  
                    <c:forEach items="${c.topRatedCourse}" var="x">
                        <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">

                            <div class="popular-course" style="cursor: pointer">
                                <a href="course-detail.jsp">
                                    <div class="courses-head">
                                        <div class="courses-img-main">
                                            <img src="assets/img/course/${x.thumnail}" alt="" class="img-fluid w-100">
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="blog-pagination">
                            <nav>
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
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
