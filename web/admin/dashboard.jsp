<%-- 
    Document   : home
    Created on : 16-06-2022, 20:46:01
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentoring - Dashboard</title>
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/table.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/account.properties.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <!--html của #page-->
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
        <script src="static/js/dashboard.js"></script>
        <script src="static/js/mentor.js"></script>
        <script src="static/js/mentee.js"></script>
        <script>
            Dashboard.init();
        </script>
    </body>
</html>
