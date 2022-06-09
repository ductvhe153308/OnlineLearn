<%-- 
    Document   : all-course
    Created on : Jun 9, 2022, 10:02:53 PM
    Author     : DuongHoangLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body>
        <%@include file="header.jsp" %>

        <section class="popular-course-section">
            <div class="container">
                <div class="section-heading d-flex align-items-center">
                    <div class="heading-content">
                        <h2><span class="text-weight">All</span> Courses <span class="header-right"></span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
                            </div>
                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c8.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user.png" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Hinata Hyuga</p>
                                    <h4 class="mb-0" >
                                        <a href="course-detail.jsp">Introduction Learn – LMS plugin</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 85</li>
                                        <li><i class="far fa-file-alt me-1"></i>5</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$200</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c9.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user8.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Keny White</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">From Zero to Hero with Nodejs</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 125</li>
                                        <li><i class="far fa-file-alt me-1"></i>3</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$380</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c10.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user2.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">John Paul</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">Learn Python – Interactive Tutorial</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 122</li>
                                        <li><i class="far fa-file-alt me-1"></i>2</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$100</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c11.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user3.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Antony Noel</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">Your Guide to Photography</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 320</li>
                                        <li><i class="far fa-file-alt me-1"></i>8</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$600</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c12.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user.png" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Hinata Hyuga</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">Become a PHP Master and Expertise</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 215</li>
                                        <li><i class="far fa-file-alt me-1"></i>3</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$350</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c13.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user8.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Keny White</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">Learning jQuery Mobile for Beginners</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 128</li>
                                        <li><i class="far fa-file-alt me-1"></i>2</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$125</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c14.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user2.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star checked"></i>
                                        </li>
                                        <li> <i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">John Paul</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">The Art of Black and White Photography</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 354</li>
                                        <li><i class="far fa-file-alt me-1"></i>8</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$620</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 d-flex flex-wrap">
                        <div class="popular-course">
                            <div class="courses-head">
                                <div class="courses-img-main">
                                    <img src="assets/img/course/c15.jpg" alt="" class="img-fluid w-100">
                                </div>
                                <div class="courses-aut-img">
                                    <img src="assets/img/user/user3.jpg" alt="">
                                </div>
                            </div>
                            <div class="courses-body">
                                <div class="courses-ratings">
                                    <ul class="mb-1">
                                        <li><i class="fas fa-star checked"></i>
                                        </li>
                                        <li><i class="fas fa-star checked"></i>
                                        </li>
                                        <li><i class="fas fa-star checked"></i>
                                        </li>
                                        <li><i class="fas fa-star checked"></i>
                                        </li>
                                        <li><i class="fas fa-star not-checked"></i>
                                        </li>
                                    </ul>
                                    <p class="mb-1">Antony Noel</p>
                                    <h4 class="mb-0">
                                        <a href="course-detail.jsp">HTML5/CSS3 Essentials in 4-Hours</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="courses-border"></div>
                            <div class="courses-footer d-flex align-items-center">
                                <div class="courses-count">
                                    <ul class="mb-0">
                                        <li><i class="fas fa-user-graduate me-1"></i> 200</li>
                                        <li><i class="far fa-file-alt me-1"></i>2</li>
                                    </ul>
                                </div>
                                <div class="courses-amt ms-auto">
                                    <h3 class="mb-0">$400</h3>
                                </div>
                            </div>
                        </div>
                    </div>
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
