<%-- 
    Document   : course-start-learning
    Created on : Jun 13, 2022, 9:17:22 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            .course-navbar a{
                display: block;
                padding-bottom: 50px;
            }
        </style>
    </head>
</head>
<body>
    <div class="main-wrapper">
        <%@include file="header.jsp" %>
        <div style="display: flex; flex-direction: row">
            <div style="width: 25%">
                <%@include file="right-navbar.jsp" %>
            </div>
            <div style="width: 75%">
                <div class="row">
                    <c:forEach items="${list}" var="x">
                        <a href="LessonDetail?id=${x.id}">Lesson</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>
