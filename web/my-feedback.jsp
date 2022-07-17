<%-- 
    Document   : my-feedback
    Created on : Jul 17, 2022, 1:01:48 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <%@include file="header.jsp" %>

        <section class="popular-course-section">
            <div class="container">
                <div class="section-heading d-flex align-items-center">
                    <div class="heading-content">
                        <h2><span class="text-weight">My</span> Feedback <span class="header-right"></span></h2>
                    </div>
                </div>
                <div class="row">  
                    <c:forEach items="${myfeedback}" var="x">
                        ${x.how_find_this_site}
                    </c:forEach>
                </div>
            
            </div>
        </section>
        <%@include file="footer.jsp" %> 
    </body>
</html>
