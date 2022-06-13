<%-- 
    Document   : blog-list
    Created on : Jun 5, 2022, 11:26:10 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
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

        <div class="main-wrapper">

            <%@include file="header.jsp" %>

            <div class="breadcrumb-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-12 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog</li>
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Blog List</h2>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">

                            <div class="blog">
                                <div class="blog-image">
                                    <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-01.jpg" alt="Post Image"></a>
                                </div>
                                <h3 class="blog-title"><a href="blog-details.jsp">Sed ut perspiciatis unde omnis iste natus error sit voluptatem</a></h3>
                                <div class="blog-info clearfix">
                                    <div class="post-left">
                                        <ul>
                                            <li>
                                                <div class="post-author">
                                                    <a href="profile.html"><img src="assets/img/user/user.jpg" alt="Post Author"> <span>Ruby Perrin</span></a>
                                                </div>
                                            </li>
                                            <li><i class="far fa-clock"></i>4 Dec 2019</li>
                                            <li><i class="far fa-comments"></i>12 Comments</li>
                                            <li><i class="fa fa-tags"></i>HTML</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    <a href="blog-details.jsp" class="read-more">Read More</a>
                                </div>
                            </div>


                            <div class="blog">
                                <div class="blog-image">
                                    <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-02.jpg" alt=""></a>
                                </div>
                                <h3 class="blog-title"><a href="blog-details.jsp">1914 translation by H. Rackham</a></h3>
                                <div class="blog-info clearfix">
                                    <div class="post-left">
                                        <ul>
                                            <li>
                                                <div class="post-author">
                                                    <a href="profile.html"><img src="assets/img/user/user1.jpg" alt="Post Author"> <span>Darren Elder</span></a>
                                                </div>
                                            </li>
                                            <li><i class="far fa-clock"></i>3 Dec 2019</li>
                                            <li><i class="far fa-comments"></i>7 Comments</li>
                                            <li><i class="fa fa-tags"></i>Java Script</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    <a href="blog-details.jsp" class="read-more">Read More</a>
                                </div>
                            </div>


                            <div class="blog">
                                <div class="blog-image">
                                    <div class="video">
                                        <iframe width="940" src="https://www.youtube.com/embed/ZMty6R0Bn0I" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <h3 class="blog-title"><a href="blog-details.jsp">The standard Lorem Ipsum passage, used since the</a></h3>
                                <div class="blog-info clearfix">
                                    <div class="post-left">
                                        <ul>
                                            <li>
                                                <div class="post-author">
                                                    <a href="profile.html"><img src="assets/img/user/user2.jpg" alt="Post Author"> <span>Deborah Angel</span></a>
                                                </div>
                                            </li>
                                            <li><i class="far fa-clock"></i>3 Dec 2019</li>
                                            <li><i class="far fa-comments"></i>2 Comments</li>
                                            <li><i class="fa fa-tags"></i>C++</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    <a href="blog-details.jsp" class="read-more">Read More</a>
                                </div>
                            </div>


                            <div class="blog">
                                <div class="blog-image">
                                    <div class="video">
                                        <iframe width="940" src="https://www.youtube.com/embed/svmGQhQLuBQ" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <h3 class="blog-title"><a href="blog-details.jsp">Section 1.10.32 of "de Finibus Bonorum et Malorum</a></h3>
                                <div class="blog-info clearfix">
                                    <div class="post-left">
                                        <ul>
                                            <li>
                                                <div class="post-author">
                                                    <a href="profile.html"><img src="assets/img/user/user3.jpg" alt="Post Author"> <span>Sofia Brient</span></a>
                                                </div>
                                            </li>
                                            <li><i class="far fa-clock"></i>2 Dec 2019</li>
                                            <li><i class="far fa-comments"></i>41 Comments</li>
                                            <li><i class="fa fa-tags"></i>Css</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    <a href="blog-details.jsp" class="read-more">Read More</a>
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

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">

                            <div class="card search-widget">
                                <div class="card-body">
                                    <form class="search-form">
                                        <div class="input-group">
                                            <input type="text" placeholder="Search..." class="form-control">
                                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                </div>
                            </div>


                            <div class="card post-widget">
                                <div class="card-header">
                                    <h4 class="card-title">Latest Posts</h4>
                                </div>
                                <div class="card-body">
                                    <ul class="latest-posts">
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.jsp">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-01.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.jsp">Lorem Ipsum is simply dummy text of the printing</a>
                                                </h4>
                                                <p>4 Dec 2019</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.jsp">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-02.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.jsp">It is a long established fact that a reader will be</a>
                                                </h4>
                                                <p>3 Dec 2019</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.jsp">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-03.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.jsp">here are many variations of passages of Lorem Ipsum</a>
                                                </h4>
                                                <p>3 Dec 2019</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.jsp">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-04.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.jsp">The standard chunk of Lorem Ipsum used since the</a>
                                                </h4>
                                                <p>2 Dec 2019</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.jsp">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-05.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.jsp">generate Lorem Ipsum which looks reasonable</a>
                                                </h4>
                                                <p>1 Dec 2019</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                            <div class="card category-widget">
                                <div class="card-header">
                                    <h4 class="card-title">Blog Categories</h4>
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
            </div>


            <footer class="footer">

                <div class="footer-top">
                    <div class="container">
                        <div class="subsccribe-item">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="subscribe-item">
                                        <div class="section-title">
                                            <h2>Sign Up For Newsletter</h2>
                                            <p>Join 60.000+ Subscribers</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="subscribe-item">
                                        <form class="newsletter-form">
                                            <input type="email" class="form-control" placeholder="Enter your email" autocomplete="off">
                                            <button class="btn cmn-btn" type="submit"><i class="fas fa-paper-plane me-2"></i>Subscribe Now</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-about">
                                    <h2 class="footer-title">About Mentoring</h2>
                                    <div class="footer-about-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris </p>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Mentee</h2>
                                    <ul>
                                        <li><a href="search.html">Search Mentors</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="booking.html">Booking</a></li>
                                        <li><a href="dashboard-mentee.html">Mentee Dashboard</a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">For Mentors</h2>
                                    <ul>
                                        <li><a href="appointments.html">Appointments</a></li>
                                        <li><a href="chat.html">Chat</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="dashboard.html">Mentor Dashboard</a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="col-lg-3 col-md-6">

                                <div class="footer-widget footer-social">
                                    <h2 class="footer-title">Instagram</h2>
                                    <div class="footer-social-info d-block">
                                        <div class="footer-insta-info">
                                            <div><img src="assets/img/course/1.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/2.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/3.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/3.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/6.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/2.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/4.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/5.jpg" alt="" class="img-fluid"></div>
                                            <div><img src="assets/img/course/6.jpg" alt="" class="img-fluid"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer-bottom">
                    <div class="container">

                        <div class="copyright">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="copyright-text text-start">
                                        <p>Terms - Privacy Policy & Safety - Send feedback</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="copyright-text text-md-end">
                                        <p>&copy; 2020 Mentoring. All rights reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
</html>
