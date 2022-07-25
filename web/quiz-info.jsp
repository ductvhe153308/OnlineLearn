<%-- 
    Document   : quiz-detail
    Created on : Jul 20, 2022, 11:38:11 PM
    Author     : dell
--%>

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
                            <h2 class="breadcrumb-title">Quiz detail</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content" style="padding-bottom: 100px">
                <div class="container-fluid">
                    <div class="row">
                        <div class="blog" style="width: 70%; margin: 0 auto">
                            <h2>Quiz: ${quiz_title}</h2>
                            <span>Time: 30min</span>
                            <div style="display: flex; flex-direction: row; padding-top: 30px; padding-bottom: 50px; font-size: 18px">
                                <div style="width: 60%">
                                    <p style="font-weight: bold">Recive grade</p>
                                    <p><span style="color: #00d285">To pass: </span><span>80% or higher</span></p>
                                </div>
                                <div>
                                    <p style="font-weight: bold">Your grade</p>
                                    <p><span><c:if test="${mark == 0}">---</c:if>
                                            <c:if test="${mark > 0}">${mark}%</c:if></span></p>
                                   
                                     
                                    
                                    <p style="font-weight: bold">Your grade LATER</p>
                                    <p><span>${marklater}%</span></p>
                                    </div>
                                </div>
                                    
                                </div>
                                <button type="submit" class="btn btn-primary submit-btn" style="margin-right: 20px; width: 150px; height: 40px">
                                    <a href="QuizDetail?id=${quiz_id}" style="color: white;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-question-diamond" viewBox="0 0 16 16" style="margin-right: 10px">
                                    <path d="M6.95.435c.58-.58 1.52-.58 2.1 0l6.515 6.516c.58.58.58 1.519 0 2.098L9.05 15.565c-.58.58-1.519.58-2.098 0L.435 9.05a1.482 1.482 0 0 1 0-2.098L6.95.435zm1.4.7a.495.495 0 0 0-.7 0L1.134 7.65a.495.495 0 0 0 0 .7l6.516 6.516a.495.495 0 0 0 .7 0l6.516-6.516a.495.495 0 0 0 0-.7L8.35 1.134z"/>
                                    <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                                    </svg><c:if test="${mark == 0}">Take quiz</c:if> 
                                    <c:if test="${mark > 0}">Try Again</c:if>
                                    </a>
                                </button>
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