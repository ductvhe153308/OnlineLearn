<%-- 
    Document   : home
    Created on : Jun 6, 2022, 7:32:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:09 GMT -->
    <head>
        <jsp:useBean id="c" class="dal.CourseDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="b" class="dal.BlogDAO" scope="request"></jsp:useBean>
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
    </head>
    <body>

        <div class="main-wrapper">
            <%@include file="header.jsp" %> 
            <section class="banner-section">
                <div class="container">
                    <div class="banner-content text-center">
                        <div class="banner-heading">
                            <h2>ONLINE COURSES TO LEARN</h2>
                            <p>Own your future learning new skills online</p>
                        </div>
                        <div class="banner-forms">
                            <form class="banner-form" action="https://mentoring-html.dreamguystech.com/template-1/search.html">
                                <div class="input-group-form form-style form-br col-md-3 col-12"> <i class="fas fa-map-marker-alt text-warning"></i>
                                    <input class="input-style-form" type="text" placeholder="Search Location" name="going">
                                </div>
                                <div class="input-group-form form-style col-md-6 col-12">
                                    <input class="input-style-form" type="text" placeholder="Search School, Online eductional centers, etc" name="going">
                                </div>
                                <button class="btn button-form col-md-3 col-12" type="submit">Search Now</button>
                            </form>
                        </div>
                    </div>
                    <div class="banner-footer">
                        <div class="banner-details">
                            <div>
                                <div class="banner-card d-flex align-items-center">
                                    <div class="banner-count">
                                        <h2>10</h2>
                                    </div>
                                    <div class="banner-contents">
                                        <h2>Global Locations</h2>
                                        <a href="#">See all Locations <i class="fas fa-caret-right right-nav-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="banner-card d-flex align-items-center">
                                    <div class="banner-count">
                                        <h2>54</h2>
                                    </div>
                                    <div class="banner-contents">
                                        <h2>Programs Courses</h2>
                                        <a href="#">See all Courses <i class="fas fa-caret-right right-nav-white"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="banner-card d-flex align-items-center">
                                    <div class="banner-count">
                                        <h2>7M</h2>
                                    </div>
                                    <div class="banner-contents">
                                        <h2>Students Globally</h2>
                                        <a href="#">Contact us <i class="fas fa-caret-right right-nav-white"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="allcourse-section bg-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c3.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">Design</h4>
                                    <p>Over <span class="text-warning">2,500</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">Digital Marketer</h4>
                                    <p>Over <span class="text-warning">5,500</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">Photography</h4>
                                    <p>Over <span class="text-warning">2,540</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c7.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">IT Security</h4>
                                    <p>Over <span class="text-warning">2,750</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c4.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">Research</h4>
                                    <p>Over <span class="text-warning">2,120</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 d-flex flex-wrap">
                            <div class="allcourse-card">
                                <div class="allcourse-img">
                                    <img src="assets/img/course/c5.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="allcourse-content">
                                    <h4 class="mb-3">Finance</h4>
                                    <p>Over <span class="text-warning">2,840</span> Courses</p>
                                </div>
                            </div>
                        </div>
                        <div class="section-btn m-auto text-center">
                            <a href="course-list.jsp">
                                <button class="btn btn-course">View all Courses <i class="fas fa-caret-right right-nav-white"></i></button>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <section class="popular-course-section">
                <div class="container">
                    <div class="section-heading d-flex align-items-center">
                        <div class="heading-content">
                            <h2><span class="text-weight">Popular</span> Courses <span class="header-right"></span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="row">                               
                        <c:forEach items="${c.courseTrending}" var="x">
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
                        <div class="section-btn m-auto text-center">
                            <a href="CourseList">
                                <button class="btn btn-course">View all <i class="fas fa-caret-right right-nav-white"></i></button>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <section class="instructor-section bg-grey">
                <div class="container">
                    <div class="section-heading d-flex align-items-center">
                        <div class="heading-content">
                            <h2><span class="text-weight">Featured </span> Instructor <span class="header-right"></span></h2>
                            <p>They are highly qualified and trained in their areas</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="instructor-card">
                                <div class="instructor-profile align-items-center">
                                    <div class="instructor-img">
                                        <img src="assets/img/user/user8.jpg" alt="">
                                    </div>
                                    <div class="instructor-desc">
                                        <h3 class="mb-0 text-warning">David Lee</h3>
                                        <span class="text-primary">Web Developer</span>
                                        <p>I've been involved in teaching and education for more than ten years. Always eager to learn, I invested a lot of my time in learning…</p>
                                    </div>
                                </div>
                                <div class="instructor-content d-flex">
                                    <div class="ic-left">
                                        <ul class="mb-0">
                                            <li><i class="fas fa-user-graduate me-1"></i> 200</li>
                                            <li><i class="far fa-file-alt me-1"></i>2</li>
                                        </ul>
                                    </div>
                                    <div class="ic-right ms-auto">
                                        <a href="#">View Profile <i class="fas fa-caret-right right-nav"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="instructor-card">
                                <div class="instructor-profile align-items-center">
                                    <div class="instructor-img">
                                        <img src="assets/img/user/user7.jpg" alt="">
                                    </div>
                                    <div class="instructor-desc">
                                        <h3 class="mb-0 text-warning">Daziy Millar</h3>
                                        <span class="text-primary">PHP Expert</span>
                                        <p>I've spend the past three years as a lead instructor at many types of coding schools. As a self taught developer, I've experienced the...</p>
                                    </div>
                                </div>
                                <div class="instructor-content d-flex">
                                    <div class="ic-left">
                                        <ul class="mb-0">
                                            <li><i class="fas fa-user-graduate me-1"></i> 200</li>
                                            <li><i class="far fa-file-alt me-1"></i>2</li>
                                        </ul>
                                    </div>
                                    <div class="ic-right ms-auto">
                                        <a href="#">View Profile <i class="fas fa-caret-right right-nav"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section-btn m-auto text-center">
                            <button class="btn btn-course">
                                <a href="mentor-register.jsp" class="text-white">Become an Instructor</a> <i class="fas fa-caret-right right-nav-white"></i></button>
                        </div>
                    </div>
                </div>
            </section>


            <section class="training-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="training-desc">
                                <h2>French for Beginners to Advanced Training</h2>
                                <p class="text-white mb-4">Get course that you need to improve your skills. Our experts are ready to help. Change your life through learing. Over 40,000 courses.</p>
                                <button class="btn btn-main">Find More <i class="fas fa-caret-right right-nav-secondary"></i></button>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="training-count text-center">
                                <p class="text-white">Time is running out</p>
                                <div class="training-counter">
                                    <div class="counters text-center">
                                        <div>
                                            <p>300</p>
                                        </div>
                                        <p>Days</p>
                                    </div>
                                    <div class="counters text-center">
                                        <div>
                                            <p>30</p>
                                        </div>
                                        <p>Hours</p>
                                    </div>
                                    <div class="counters text-center">
                                        <div>
                                            <p>03</p>
                                        </div>
                                        <p>Minutes</p>
                                    </div>
                                    <div class="counters text-center">
                                        <div>
                                            <p>33</p>
                                        </div>
                                        <p>Seconds</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="tab-section">
                <div class="container">
                    <div class="section-heading d-flex align-items-center text-background">
                        <div class="heading-content">
                            <h2><span class="text-weight">Popular </span> Courses <span class="header-right"></span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="courses-tabs w-100 flex-wrap">
                        <div class="course-left tab-content">
                            <div class="tab-pane active" id="c1">
                                <div class="p-0 d-flex flex-wrap">
                                    <div class="bg-card">
                                        <div class="course-bg">
                                            <img src="assets/img/course-bg.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="course-overlay">
                                            <div class="course-text">
                                                <div class="courses-content">
                                                    <span>145 NEW</span>
                                                    <h4>DESIGN COURSE BEGINNER</h4>
                                                    <h5 class="course-amount mb-0"><sup>$</sup>119<sup>/mo</sup></h5>
                                                    <p>The ultimate drawing course will show you how to create adavnced art that</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="c2">
                                <div class="p-0 d-flex flex-wrap">
                                    <div class="bg-card">
                                        <div class="course-bg">
                                            <img src="assets/img/course-bg4.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="course-overlay">
                                            <div class="course-text">
                                                <div class="courses-content">
                                                    <span>325 NEW</span>
                                                    <h4>BUSINESS COURSE BEGINNER</h4>
                                                    <h5 class="course-amount mb-0"><sup>$</sup>109<sup>/mo</sup></h5>
                                                    <p>The ultimate drawing course will show you how to create adavnced art that</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="c3">
                                <div class="p-0 d-flex flex-wrap">
                                    <div class="bg-card">
                                        <div class="course-bg">
                                            <img src="assets/img/course-bg1.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="course-overlay">
                                            <div class="course-text">
                                                <div class="courses-content">
                                                    <span>315 NEW</span>
                                                    <h4>LIFESTYLE COURSE BEGINNER</h4>
                                                    <h5 class="course-amount mb-0"><sup>$</sup>209<sup>/mo</sup></h5>
                                                    <p>The ultimate drawing course will show you how to create adavnced art that</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="c4">
                                <div class="p-0 d-flex flex-wrap">
                                    <div class="bg-card">
                                        <div class="course-bg">
                                            <img src="assets/img/course-bg3.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="course-overlay">
                                            <div class="course-text">
                                                <div class="courses-content">
                                                    <span>312 NEW</span>
                                                    <h4>SOFTWARE COURSE BEGINNER</h4>
                                                    <h5 class="course-amount mb-0"><sup>$</sup>195<sup>/mo</sup></h5>
                                                    <p>The ultimate drawing course will show you how to create adavnced art that</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="c5">
                                <div class="p-0 d-flex flex-wrap">
                                    <div class="bg-card">
                                        <div class="course-bg">
                                            <img src="assets/img/course-bg2.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="course-overlay">
                                            <div class="course-text">
                                                <div class="courses-content">
                                                    <span>115 NEW</span>
                                                    <h4>PHOTO COURSE BEGINNER</h4>
                                                    <h5 class="course-amount mb-0"><sup>$</sup>251<sup>/mo</sup></h5>
                                                    <p>The ultimate drawing course will show you how to create adavnced art that</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="course-right p-0 flex-wrap">
                            <div class="tabs-menus">
                                <div class="course-list nav nav-tabs">
                                    <a href="#c1" data-bs-toggle="tab" class="active">
                                        <div class="d-block text-center course-tabs">
                                            <i class="far fa-eye"></i>
                                            <p>Design</p>
                                        </div>
                                    </a>
                                    <a href="#c2" data-bs-toggle="tab">
                                        <div class="d-block text-center course-tabs">
                                            <i class="fas fa-business-time"></i>
                                            <p>Business</p>
                                        </div>
                                    </a>
                                    <a href="#c3" data-bs-toggle="tab">
                                        <div class="d-block text-center course-tabs">
                                            <i class="fab fa-rocketchat"></i>
                                            <p>Lifestyle</p>
                                        </div>
                                    </a>
                                    <a href="#c4" data-bs-toggle="tab">
                                        <div class="d-block text-center course-tabs">
                                            <i class="fas fa-laptop-code"></i>
                                            <p>Software</p>
                                        </div>
                                    </a>
                                    <a href="#c5" data-bs-toggle="tab">
                                        <div class="d-block text-center course-tabs mb-0">
                                            <i class="fas fa-camera-retro"></i>
                                            <p>Photo</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="featured-section bg-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="featured-card bg-dark-grey">
                                <h2 class="text-white">Best Courses</h2>
                                <p class="text-white">Courses for all levels cover technical skills, creative techniques, business strategies, and more. We have collected all of the necessary effective study.</p>
                                <a href="CourseTopRate" class="text-white">View More <i class="fas fa-caret-right right-nav-grey"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="featured-card bg-primary">
                                <h2 class="text-white">Top rated Instructors</h2>
                                <p class="text-white">Courses for all levels cover technical skills, creative techniques, business strategies, and more. We have collected all of the necessary effective study.</p>
                                <a href="MentorBestRate" class="text-white">View More <i class="fas fa-caret-right right-nav-white"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="testimonial-section bg-grey">
                <div class="container">
                    <div class="section-header text-center">
                        <h3>What People Says</h3>
                        <p class="sub-title">Are you looking to join online institutions? Now it's very simple, Sign up with mentoring</p>
                    </div>
                    <div class="row">
                        <div class="col-md-8 m-auto text-center">
                            <div class="testimonial-slider">
                                <div id="customers-testimonials" class="owl-carousel text-center">
                                    <div class="item">
                                        <img src="assets/img/user/user1.jpg" class="clients m-auto text-center" alt="">
                                        <i class="fas fa-quote-left quote my-4"></i>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut nulla et erat venenatis cursus. Nulla facilisi. Vestibulum in arcu eu nulla venenatis auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>
                                        <h6 class="name mt-4">Rashed kabir</h6>
                                        <span>Designer</span>
                                    </div>
                                    <div class="item">
                                        <img src="assets/img/user/user2.jpg" class="clients m-auto text-center" alt="">
                                        <i class="fas fa-quote-left quote my-4"></i>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut nulla et erat venenatis cursus. Nulla facilisi. Vestibulum in arcu eu nulla venenatis auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>
                                        <h6 class="name mt-4">Rashed kabir</h6>
                                        <span>Designer</span>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-controls">
                                <div class="owl-nav">
                                    <div class="owl-prev"></div>
                                    <div class="owl-next"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="blog-sections">
                <div class="container">
                    <div class="section-heading d-flex align-items-center">
                        <div class="heading-content">
                            <h2><span class="text-weight">From the </span> Blog <span class="header-right"></span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${b.latestBlog}" var="x">
                            <div class="col-md-4 col-sm-6">
                            <div class="blog-box blog-grid-box">
                                <div class="blog-grid-box-img">
                                    <a href="BlogDetail?id=${x.id}">
                                        <img src="assets/img/blog/${x.image}" class="img-fluid" alt="">
                                    </a>
                                </div>
                                <div class="blog-grid-box-content">
                                    <div class="blog-avatar text-center">
                                        <p>Posted on ${x.created_date}</p>
                                    </div>
                                    <h4><a href="BlogDetail?id=${x.id}">${x.title}</a></h4>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum</p>
                                    <a href="BlogDetail?id=${x.id}" class="text-primary">View More <i class="fas fa-caret-right right-nav"></i></a>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            <%@include file="footer.jsp" %> 
        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:14:33 GMT -->
</html>
