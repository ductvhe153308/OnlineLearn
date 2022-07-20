<%-- 
    Document   : blog-edit
    Created on : Jun 18, 2022, 10:36:08 PM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/add-blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:24 GMT -->
    <head>
         <jsp:useBean id="c" class="dal.CategoryDAO" scope="request"></jsp:useBean>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">
            <%@include file="header.jsp" %>
            <section class="popular-course-section">
                <div class="container">
                    <div class="breadcrumb-bar">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <div class="col-md-12 col-12">
                                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                        </ol>
                                    </nav>
                                    <h2 class="breadcrumb-title">Edit Blog</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div style="width: 100%">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <form action="EditBlog?id=${b.id}" method="POST">
                                                        <div class="service-fields mb-3">
                                                            <h4 class="heading-2">Service Information</h4>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Blog Title <span class="text-danger">*</span></label>
                                                                        <input class="form-control" type="text" name="title" value="${b.title}">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="service-fields mb-3">
                                                            <h4 class="heading-2">Blog Category</h4>
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="form-group">
                                                                        <label>Category <span class="text-danger">*</span></label>
                                                                        <select class="form-control select" name="blogCategory">
                                                                            <c:forEach items="${c.allBlogCategory}" var="x">
                                                                                <option value="${x.id}">${x.name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="service-fields mb-3">
                                                            <h4 class="heading-2">Blog Short Detail</h4>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Short Detail <span class="text-danger">*</span></label>
                                                                        <textarea type="text" id="about" class="form-control service-desc" name="shortDetail">${b.short_detail}</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="service-fields mb-3">
                                                            <h4 class="heading-2">Blog Details</h4>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Descriptions <span class="text-danger">*</span></label>
                                                                        <textarea type="text" id="about" class="form-control service-desc" name="detail">${b.detail}</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="service-fields mb-3">
                                                            <h4 class="heading-2">Blog Images </h4>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="service-upload">
                                                                        <i class="fas fa-cloud-upload-alt"></i>
                                                                        <span>Upload Service Images *</span>
                                                                        <input type="file" name="images[]" id="images" multiple="">
                                                                    </div>
                                                                    <div id="uploadPreview" style="padding-top: 20px">
                                                                        <ul class="upload-wrap" style="list-style: none">
                                                                            <li style="margin-right: 20px; width: 120px">
                                                                                <div class="upload-images">
                                                                                    <img alt="" src="assets/img/blog/blog-thumb-01.jpg">
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="submit-section">
                                                            <button class="btn btn-primary submit-btn" type="submit" name="form_submit" value="submit">Submit</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%@include file="footer.jsp" %> 
        </div>
        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/plugins/select2/js/select2.min.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/add-blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:24 GMT -->
</html>

