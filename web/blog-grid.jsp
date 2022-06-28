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
