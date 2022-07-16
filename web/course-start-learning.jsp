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
            <div class="navbar" style="width: 20%; display: flex; flex-direction: column;">
                <div class="course-navbar" style="font-size: 20px; font-weight: bold; padding: 20px">
                    <a href="#Overview">Overview</a>
                    <a href="#Grades">Grades</a>
                    <a href="#Discussion">Discussion Forums</a>
                    <a href="#Messages">Messages</a>
                    <a href="#Info">Course Info</a>
                </div>
            </div>
            <div style="width: 80%">
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
