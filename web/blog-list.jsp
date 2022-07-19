<%-- 
    Document   : blog-list
    Created on : Jun 5, 2022, 11:26:10 PM
    Author     : dell
--%>
<%@page import="model.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
    <head>
        <jsp:useBean id="c" class="dal.CategoryDAO" scope="request"></jsp:useBean>
        <jsp:useBean id="b" class="dal.BlogDAO" scope="request"></jsp:useBean>
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
                            <h2 class="breadcrumb-title">Blog List</h2>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <c:forEach items="${list}" var="x">
                                <div class="blog">
                                    <div class="blog-image">
                                        <a href="BlogDetail?id=${x.id}"><img class="img-fluid" src="assets/img/blog/${x.image}" alt="Post Image"></a>
                                    </div>
                                    <h3 class="blog-title"><a href="BlogDetail?id=${x.id}">${x.title}</a></h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/${x.profile_picture}" alt="Post Author"> <span>${x.last_name} ${x.first_name}</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-clock"></i>${x.created_date}</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fa fa-tags"></i>HTML</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>${x.short_detail}</p>
                                        <a href="BlogDetail?id=${x.id}" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="blog-pagination">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                    <c:if test="${tag >1}">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="BlogList?index=${tag-1}" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
                                    </li>
                                    </c:if>
                                    <c:forEach begin = "1" end = "${endP}" var = "i">
                                        <li class="page-item ${tag==i?"active":""} ">
                                        <a class="page-link  " href="BlogList?index=${i}">${i}</a>
                                    </li>   
                                    </c:forEach>
                                   
                                    <c:if test="${tag < endP}">
                                    <li class="page-item">
                                        <a class="page-link" href="BlogList?index=${tag+1}"><i class="fas fa-angle-double-right"></i></a>
                                    </li>
                                    </c:if>
                                </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">

                            <div class="card search-widget">
                                <div class="card-body">
                                    <form class="search-form" action="SearchBlog" method="POST">
                                        <div class="input-group">
                                            <input value="${searchBlog}" name="searchBlog" onfocus="toogleSuggestSearch()" onblur="toogleSuggestSearch()" type="text" placeholder="Search..." class="form-control">
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
                                        <c:forEach items="${b.latestBlog}" var="z">
                                            <li>
                                                <div class="post-thumb">
                                                    <a href="blog-details.jsp">
                                                        <img class="img-fluid" src="assets/img/blog/${z.image}" alt="">
                                                    </a>
                                                </div>
                                                <div class="post-info">
                                                    <h4>
                                                        <a href="BlogDetail?id=${z.id}">${z.title}</a>
                                                    </h4>
                                                    <p>${z.created_date}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>


                            <div class="card category-widget">
                                <div class="card-header">
                                    <h4 class="card-title">Blog Categories</h4>
                                </div>
                                <div class="card-body">
                                    <ul class="categories">
                                        <c:forEach items="${c.allBlogCategory}" var="x">
                                            <li><a href="#">${x.name}</a></li>
                                        </c:forEach>
                                        
                                    </ul>
                                </div>
                            </div>


                            <div class="card tags-widget">
                                <div class="card-header">
                                    <h4 class="card-title">Tags</h4>
                                </div>
                                <div class="card-body">
                                    <ul class="tags">
                                        <c:forEach items="${c.allBlogCategory}" var="x">
                                            <li><a href="#" class="tag">${x.name}</a></li>
                                        </c:forEach>
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

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/blog-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
</html>
