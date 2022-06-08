<%-- 
    Document   : blog-grid
    Created on : Jun 8, 2022, 10:10:54 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-grid.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
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

            <div class="header-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="left-top">
                                <ul>
                                    <li><i class="fas fa-map-marker-alt top-icon"></i> 123, washington street, uk</li>
                                    <li><i class="fas fa-phone-volume top-icon"></i> +19 123-456-7890</li>
                                    <li><i class="fas fa-envelope top-icon"></i> <a href="https://mentoring-html.dreamguystech.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="412c20282d01382e3433252e2c20282f6f222e2c">[email&#160;protected]</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="right-top">
                                <ul>
                                    <li>
                                        <a href="#"><i class="fab fa-facebook-f top-icons"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-instagram top-icons"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-linkedin-in top-icons"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-twitter top-icons"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <header class="header">
                <nav class="navbar navbar-expand-lg header-nav">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="index.html" class="navbar-brand logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="index.html" class="menu-logo">
                                    <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li>
                                    <a href="index.html">Home</a>
                                </li>
                                <li class="has-submenu">
                                    <a href="#">Mentor <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="dashboard.html">Mentor Dashboard</a></li>
                                        <li><a href="bookings.html">Bookings</a></li>
                                        <li><a href="schedule-timings.html">Schedule Timing</a></li>
                                        <li><a href="mentee-list.html">Mentee List</a></li>
                                        <li><a href="profile-mentee.html">Mentee Profile</a></li>
                                        <li class="has-submenu">
                                            <a href="blog.html">Blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Blog</a></li>
                                                <li><a href="blog-details.jsp">Blog View</a></li>
                                                <li><a href="add-blog.html">Add Blog</a></li>
                                                <li><a href="edit-blog.html">Edit Blog</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="chat.html">Chat</a></li>
                                        <li><a href="invoices.html">Invoices</a></li>
                                        <li><a href="profile-settings.html">Profile Settings</a></li>
                                        <li><a href="reviews.html">Reviews</a></li>
                                        <li><a href="mentor-recover.jsp">Mentor Register</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="#">Mentee <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu">
                                            <a href="#">Mentors</a>
                                            <ul class="submenu">
                                                <li><a href="map-grid.html">Map Grid</a></li>
                                                <li><a href="map-list.html">Map List</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="search.html">Search Mentor</a></li>
                                        <li><a href="profile.html">Mentor Profile</a></li>
                                        <li><a href="bookings-mentee.html">Bookings</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="booking-success.html">Booking Success</a></li>
                                        <li><a href="dashboard-mentee.html">Mentee Dashboard</a></li>
                                        <li><a href="favourites.html">Favourites</a></li>
                                        <li><a href="chat-mentee.html">Chat</a></li>
                                        <li><a href="profile-settings-mentee.html">Profile Settings</a></li>
                                        <li><a href="change-password.html">Change Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="#">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="voice-call.html">Voice Call</a></li>
                                        <li><a href="video-call.html">Video Call</a></li>
                                        <li><a href="search.html">Search Mentors</a></li>
                                        <li><a href="components.html">Components</a></li>
                                        <li class="has-submenu">
                                            <a href="invoices.html">Invoices</a>
                                            <ul class="submenu">
                                                <li><a href="invoices.html">Invoices</a></li>
                                                <li><a href="invoice-view.html">Invoice View</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="blank-page.html">Starter Page</a></li>
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="#">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.jsp">Blog List</a></li>
                                        <li class="active"><a href="blog-grid.jsp">Blog Grid</a></li>
                                        <li><a href="blog-details.jsp">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/index.html" target="_blank">Admin</a>
                                </li>
                                <li class="login-link">
                                    <a href="login.jsp">Login / Signup</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">

                            <li class="nav-item dropdown has-arrow logged-item">
                                <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img class="rounded-circle me-2" src="assets/img/user/user.jpg" width="31" alt="Darren Elder">Jonathan Doe
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <div class="user-header">
                                        <div class="avatar avatar-sm">
                                            <img src="assets/img/user/user.jpg" alt="User Image" class="avatar-img rounded-circle">
                                        </div>
                                        <div class="user-text">
                                            <h6>Jonathan Doe</h6>
                                            <p class="text-muted mb-0">Mentor</p>
                                        </div>
                                    </div>
                                    <a class="dropdown-item" href="dashboard.html">Dashboard</a>
                                    <a class="dropdown-item" href="profile-settings.html">Profile Settings</a>
                                    <a class="dropdown-item" href="login.jsp">Logout</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </nav>
            </header>


            <div class="breadcrumb-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-12 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog</li>
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Blog Grid</h2>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="row blog-grid-row">
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-01.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user1.jpg" alt="Post Author"> <span>Ruby Perrin</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 4 Dec 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">Sed ut perspiciatis unde omnis iste natus</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-02.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user2.jpg" alt="Post Author"> <span>Darren Elder</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 3 Dec 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">1914 translation by H. Rackham?</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-03.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user3.jpg" alt="Post Author"> <span>Deborah Angel</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 3 Dec 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">At vero eos et accusamus et iusto odio</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-04.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user4.jpg" alt="Post Author"> <span>Sofia Brient</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 2 Dec 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">On the other hand, we denounce with righte</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-05.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user5.jpg" alt="Post Author"> <span>Marvin Campbell</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 1 Dec 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">The standard chunk of Lorem Ipsum used since</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-06.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user6.jpg" alt="Post Author"> <span>Katharine Berthold</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 30 Nov 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">There are many variations of passages of Lorem</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-07.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user7.jpg" alt="Post Author"> <span>Linda Tobin</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 28 Nov 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">It is a long established fact that</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-08.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user8.jpg" alt="Post Author"> <span>Paul Richard </span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 25 Nov 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">Contrary to popular belief, Lorem </a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-09.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user9.jpg" alt="Post Author"> <span>John Gibbs</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 24 Nov 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">packages and web page editors now use Lorem</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-12">

                                    <div class="blog grid-blog">
                                        <div class="blog-image">
                                            <a href="blog-details.jsp"><img class="img-fluid" src="assets/img/blog/blog-10.jpg" alt="Post Image"></a>
                                        </div>
                                        <div class="blog-content">
                                            <ul class="entry-meta meta-item">
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user10.jpg" alt="Post Author"> <span>Olga Barlow</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i> 23 Nov 2019</li>
                                            </ul>
                                            <h3 class="blog-title"><a href="blog-details.jsp">Lorem Ipsum is simply dummy</a></h3>
                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
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
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="recover.jsp">Register</a></li>
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
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="recover.jsp">Register</a></li>
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

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-grid.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:39 GMT -->
</html>
