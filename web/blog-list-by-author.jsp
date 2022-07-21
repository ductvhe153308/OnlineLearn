<%-- 
    Document   : blog-list-by-author
    Created on : Jul 8, 2022, 1:43:18 PM
    Author     : ADMIN
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
                                    <!--<li class="breadcrumb-item active" aria-current="page">Blog</li>-->
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">My Blog</h2>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <c:choose>
                                <c:when test="${size != 0}">
                                    <c:forEach items="${list}" var="x">
                                        <div class="blog">
                                            <div class="blog-image">
                                                <c:choose>
                                                    <c:when test="${x.image != null}">
                                                        <a href="BlogDetail?id=${x.id}"><img class="img-fluid" src="assets/img/blog/${x.image}" alt="Post Image"></a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="BlogDetail?id=${x.id}"><img class="img-fluid" src="assets/img/blog/blog-0<%= (int) (Math.random() * 10) %>.jpg" alt="Post Image"></a>
                                                    </c:otherwise>
                                                </c:choose>
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
                                                <div style="display: flex; flex-direction: row; justify-content: space-between; padding-right: 50px;">
                                                    <a href="BlogDetail?id=${x.id}" class="read-more">Read More</a>
                                                    <div style="display: flex;">
                                                        <div class="submit-section">
                                                            <button type="submit" class="btn btn-primary submit-btn" style="margin-right: 20px;" onclick="return confirm('Are you sure you want to delete?')">
                                                                <a href="DeleteBlog?id=${x.id}" style="color: white;">Delete <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                                                    </svg></a>
                                                            </button>
                                                        </div> 

                                                        <div class="submit-section">
                                                            <button type="submit" class="btn btn-primary submit-btn">
                                                                <a href="EditBlog?id=${x.id}" style="color: white;">Edit <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                                    </svg></i></a>
                                                            </button>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       
                                    </c:forEach>
                                    <a href="blog-create.jsp" style="text-decoration: underline; color: #009efb; font-size: 19px">Create new blog</a>
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
                                </c:when>
                                <c:otherwise>
                                    <div class="blog" style="font-size: 18px">You don't have any blogs yet! Create a new one
                                        <a href="blog-create.jsp" style="text-decoration: underline; color: #009efb; font-size: 19px">here</a>
                                    </div>
                                </c:otherwise>
                            </c:choose>
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
