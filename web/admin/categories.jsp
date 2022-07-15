<%-- 
    Document   : categories
    Created on : Jun 19, 2022, 3:51:05 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentoring - Categories Page</title>
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/table.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/account.properties.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <div class="page-title">Categories <div class="btn btn-add right" id="add-category">Add category</div></div>
            <div class="page-navigation">
                <div class="url" data-url="admin/dashboard">Dashboard</div> /
                <div class="dist">Categories</div>
            </div> 
            <div class="component col-12" id="categories"></div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
        <script src="static/js/categories.js"></script>
        <script>
            Categories.init();
            Categories.board('categories', 1, 10);
        </script>
    </body>
</html>