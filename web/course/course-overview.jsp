<%-- 
    Document   : course-overview
    Created on : Jul 5, 2022, 10:15:44 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="c" class="dal.CourseDAO" scope="request"></jsp:useBean>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
            <title>Mentoring</title>

            <link rel="icon" href="../assets/img/favicon.png" type="image/x-icon">

            <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

            <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
            <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">

            <link rel="stylesheet" href="../assets/css/style.css">
        </head>
        <body>
        <%--<%@include file="/header.jsp" %>--%>
        <div class="main-wrapper">
            <%@include file="course-navbar.jsp" %> 
        </div>
        <%--<%@include file="/footer.jsp" %>--%> 
    </body>
</html>
