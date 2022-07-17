<%-- 
    Document   : booking
    Created on : Jun 19, 2022, 3:50:39 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentoring - Course List Page</title>
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/table.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/account.properties.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <div class="page-title">List of Booking Course </div>
            <div class="page-navigation">
                <div class="url" data-url="admin/dashboard">Dashboard</div> / 
                <div class="dist">Course</div>
            </div> 
            <div class="component col-12" id="booking"></div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
        <script src="static/js/course.js"></script>
        <script>
            Course.init();
            Course.board.all('booking', 1, 10);
        </script>
    </body>
</html>
