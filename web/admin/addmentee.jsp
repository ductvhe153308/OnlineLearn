<%-- 
    Document   : addmentor
    Created on : Jul 10, 2022, 3:46:36 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentoring - Add Mentor Page</title>
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/table.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/account.properties.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <div class="page-title">Add new Mentee</div>
            <div class="page-navigation">
                <div class="url" data-url="admin/dashboard">Dashboard</div> / 
                <div>User</div> / 
                <div class="url" data-url="admin/mentee">Mentee</div> /
                <div class="dist">Add</div>
            </div> 
            <div class="component col-12" id="mentee" style="align-items: center;color: #fdff00; font-weight: 700;background: url(/onlinelearn/assets/img/course-bg4.jpg); background-size: cover; height:550px">
                <form action="add" method="post">
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">First name</span>                            
                            <input class="col-7" type="text" name="fname" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">Last name</span>                            
                            <input class="col-7" type="text" name="lname" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">Email address</span>                            
                            <input class="col-7" type="email" name="email" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">Phone number</span>                            
                            <input class="col-7" type="text" name="phone" required maxlength="10" minlength="10">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">Password</span>                            
                            <input class="col-7" type="password" name="password" value="123456">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <span class="col-3">Note: </span>                            
                            <span class="col-7" style="padding: 5px 10px; color: #c0b937">Password default is 123456!</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 row">
                            <div class="col-3"></div>
                            <button type="submit" id="submit" style="display: none;"></button>
                            <div class="col-7 btn btn-add" id="submit-trigger">Create new mentee</div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
        <script src="../static/js/mentee.js"></script>
        <script>
            Mentee.init();
            Mentee.form.add();
        </script>
    </body>
</html>
