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
                    <div class="row header-course-detail" style="background-image: linear-gradient(90deg, rgb(140, 21, 21), rgb(210, 194, 149)); padding: 0 0 50px 100px;">
                        <div class="courses-body" style="color: white; text-align: start; display: flex; flex-direction: row" >
                            <div style="width: 60%">
                                <h4 style="color: white; padding-bottom: 20px">
                                    Course > Category 
                                </h4>
                                <h1 style="color: white;">
                                    From Zero to Hero with Nodejs
                                </h1>
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
                                </div>
                                <div style="display: flex; flex-direction: row; align-items: center; padding-top: 50px">
                                    <div>
                                        <img style="border-radius: 50%;
                                             width: 60px;
                                             margin: auto;
                                             height: 60px;" src="assets/img/user/user8.jpg" alt="">
                                    </div>
                                    <p style="color: white; padding-left: 20px">Keny White</p>
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
                            <a class="btn btn-primary" style="background-color: #55acee; width: 200px" href="course-start-learning.jsp" role="button">                          
                                <span style="display: block; font-size: 22px">
                                    Enroll 
                                </span>
                                <span>
                                    Start in
                                    <span id="monthNow"></span>
                                    <span id="dateNow"></span>
                                </span>
                            </a>
                            <span style="display: block; padding-top: 20px">1,234 already enrolled</span>
                        </div>
                    </div>
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
                                            <a href="course-detail.jsp">
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
                                            </a>
                                        </li>
                                        <li>
                                            <a href="course-detail.jsp">
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
                                            </a>
                                        </li>
                                        <li>
                                            <a href="course-detail.jsp">
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
                                            </a>
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


            <%@include file="footer.jsp" %>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

        <script src="assets/js/script.js"></script>
        <script>
            var d = new Date();
            var monthNow = d.toLocaleString('default', { month: 'long' });
            document.getElementById("monthNow").innerHTML = monthNow;
            document.getElementById("dateNow").innerHTML =d.getDate() ;
        </script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-details.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:24 GMT -->
</html>
