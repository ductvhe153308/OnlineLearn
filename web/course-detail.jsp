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
                                    <li><i class="fas fa-envelope top-icon"></i> <a href="https://mentoring-html.dreamguystech.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8ce1ede5e0ccf5e3f9fee8e3e1ede5e2a2efe3e1">[email&#160;protected]</a></li>
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
                            <a href="home.jsp" class="navbar-brand logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="home.jsp" class="menu-logo">
                                    <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li>
                                    <a href="home.jsp">Home</a>
                                </li>
                                <li class="has-submenu active">
                                    <a href="#">Mentor <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="dashboard.html">Mentor Dashboard</a></li>
                                        <li><a href="bookings.html">Bookings</a></li>
                                        <li><a href="schedule-timings.html">Schedule Timing</a></li>
                                        <li><a href="mentee-list.html">Mentee List</a></li>
                                        <li><a href="profile-mentee.html">Mentee Profile</a></li>
                                        <li class="has-submenu active">
                                            <a href="blog.html">Blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Blog</a></li>
                                                <li class="active"><a href="blog-details.jsp">Blog View</a></li>
                                                <li><a href="add-blog.html">Add Blog</a></li>
                                                <li><a href="edit-blog.html">Edit Blog</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="chat.html">Chat</a></li>
                                        <li><a href="invoices.html">Invoices</a></li>
                                        <li><a href="profile-settings.html">Profile Settings</a></li>
                                        <li><a href="reviews.html">Reviews</a></li>
                                        <li><a href="mentor-register.jsp">Mentor Register</a></li>
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
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="#">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.jsp">Blog List</a></li>
                                        <li><a href="blog-grid.jsp">Blog Grid</a></li>
                                        <li><a href="blog-details.jsp">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/home.jsp" target="_blank">Admin</a>
                                </li>
                                <li class="login-link">
                                    <a href="login.html">Login / Signup</a>
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
                                    <a class="dropdown-item" href="login.html">Logout</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </nav>
            </header>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="blog-view">
                                <div class="blog blog-single-post">
                                    <div class="blog-image">
                                        <a href="javascript:void(0);"><img alt="" src="assets/img/blog/blog-01.jpg" class="img-fluid"></a>
                                    </div>
                                    <h3 class="blog-title">Lorem Ipsum is simply dummy text of the printing</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user.jpg" alt="Post Author"> <span>Marvin Downey</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-calendar"></i>4 Dec 2019</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fa fa-tags"></i>HTML</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
                                    </div>
                                </div>
                                <div class="card blog-share clearfix">
                                    <div class="card-header">
                                        <h4 class="card-title">Share the post</h4>
                                    </div>
                                    <div class="card-body">
                                        <ul class="social-share">
                                            <li><a href="#" title="Facebook"><i class="fab fa-facebook"></i></a></li>
                                            <li><a href="#" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                            <li><a href="#" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                                            <li><a href="#" title="Google Plus"><i class="fab fa-google-plus"></i></a></li>
                                            <li><a href="#" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                </div> 
                                <div class="card author-widget clearfix">
                                    <div class="card-header">
                                        <h4 class="card-title">About Author</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="about-author">
                                            <div class="about-author-img">
                                                <div class="author-img-wrap">
                                                    <a href="profile.html"><img class="img-fluid rounded-circle" alt="" src="assets/img/user/user1.jpg"></a>
                                                </div>
                                            </div>
                                            <div class="author-details">
                                                <a href="profile.html" class="blog-author-name">Darren Elder</a>
                                                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card blog-comments clearfix">
                                    <div class="card-header">
                                        <h4 class="card-title">Comments (12)</h4>
                                    </div>
                                    <div class="card-body pb-0">
                                        <ul class="comments-list">
                                            <li>
                                                <div class="comment">
                                                    <div class="comment-author">
                                                        <img class="avatar" alt="" src="assets/img/user/user4.jpg">
                                                    </div>
                                                    <div class="comment-block">
                                                        <span class="comment-by">
                                                            <span class="blog-author-name">Michelle Fairfax</span>
                                                        </span>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                        <p class="blog-date">Dec 6, 2017</p>
                                                        <a class="comment-btn" href="#">
                                                            <i class="fas fa-reply"></i> Reply
                                                        </a>
                                                    </div>
                                                </div>
                                                <ul class="comments-list reply">
                                                    <li>
                                                        <div class="comment">
                                                            <div class="comment-author">
                                                                <img class="avatar" alt="" src="assets/img/user/user5.jpg">
                                                            </div>
                                                            <div class="comment-block">
                                                                <span class="comment-by">
                                                                    <span class="blog-author-name">Gina Moore</span>
                                                                </span>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae.</p>
                                                                <p class="blog-date">Dec 6, 2017</p>
                                                                <a class="comment-btn" href="#">
                                                                    <i class="fas fa-reply"></i> Reply
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="comment">
                                                            <div class="comment-author">
                                                                <img class="avatar" alt="" src="assets/img/user/user3.jpg">
                                                            </div>
                                                            <div class="comment-block">
                                                                <span class="comment-by">
                                                                    <span class="blog-author-name">Carl Kelly</span>
                                                                </span>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae.</p>
                                                                <p class="blog-date">December 7, 2017</p>
                                                                <a class="comment-btn" href="#">
                                                                    <i class="fas fa-reply"></i> Reply
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <div class="comment">
                                                    <div class="comment-author">
                                                        <img class="avatar" alt="" src="assets/img/user/user6.jpg">
                                                    </div>
                                                    <div class="comment-block">
                                                        <span class="comment-by">
                                                            <span class="blog-author-name">Elsie Gilley</span>
                                                        </span>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                        <p class="blog-date">December 11, 2017</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="comment">
                                                    <div class="comment-author">
                                                        <img class="avatar" alt="" src="assets/img/user/user7.jpg">
                                                    </div>
                                                    <div class="comment-block">
                                                        <span class="comment-by">
                                                            <span class="blog-author-name">Joan Gardner</span>
                                                        </span>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                        <p class="blog-date">December 13, 2017</p>
                                                        <a class="comment-btn" href="#">
                                                            <i class="fas fa-reply"></i> Reply
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card new-comment clearfix">
                                    <div class="card-header">
                                        <h4 class="card-title">Leave Comment</h4>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-group">
                                                <label>Name <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Your Email Address <span class="text-danger">*</span></label>
                                                <input type="email" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Comments</label>
                                                <textarea rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="submit-section">
                                                <button class="btn btn-primary submit-btn" type="submit">Submit</button>
                                            </div>
                                        </form>
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
                                    <h4 class="card-title">Popular Courses</h4>
                                </div>
                                <div class="card-body">
                                    <ul class="latest-posts">
                                        <li>
                                            <div class=" d-flex flex-wrap">
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
                                                            <ul class="mb-1" style="display: flex; flex-direction: row" >
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
                                        </li>
                                        <li>
                                            <div class=" d-flex flex-wrap">
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
                                                            <ul class="mb-1" style="display: flex; flex-direction: row" >
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
                                        </li>
                                        <li>
                                            <div class=" d-flex flex-wrap">
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
                                                            <ul class="mb-1" style="display: flex; flex-direction: row" >
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
                                        </li>

                                    </ul>
                                </div>
                            </div>


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

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:24 GMT -->
</html>
