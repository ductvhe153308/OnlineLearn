<%-- 
    Document   : header.jsp
    Created on : Jun 16, 2022, 9:39:54 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="/onlinelearn/admin/static/css/header.css">
    <link rel="stylesheet" href="/onlinelearn/assets/css/style.css">
    <script src="/onlinelearn/assets/js/ap.js"></script>
    </head>
<body>
    <div class="header">
        <div class="header-left url" data-url="home">
            <img src="/onlinelearn/admin/static/images/logo-white.png"/>
        </div>
        <div class="header-right">
            <div id="minimize">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-list" viewBox="0 0 20 20">
                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                </svg>
            </div>
            <div id="search">
                <input name="" type="text" placeholder="Search here"/>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
            </div>
            <div id="appendix">
                <div></div>
                <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-aspect-ratio" viewBox="0 0 16 16">
                    <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h13A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5v-9zM1.5 3a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
                    <path d="M2 4.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1H3v2.5a.5.5 0 0 1-1 0v-3zm12 7a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1 0-1H13V8.5a.5.5 0 0 1 1 0v3z"/>
                    </svg></div>
                <div id="notice"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                    <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                    </svg></div>
                <div id="user">
                    <ul class="nav header-navbar-rht">
                        <div class="main-menu-wrapper">
                            <ul class="main-nav">
                                <li class="has-submenu">
                                    <a> <image src="/onlinelearn/assets/img/user/${user.pfp}" style="width: 40px;height: 40px;border-radius: 50%;margin-right:10px"/>
                                        ${email}<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a class="url" data-url="UserProfile?id=${user.aid}">My profile</a></li>
                                        <li><a class="url" data-url="MyCourse">My course</a></li>
                                        <li><a class="url" data-url="MyPurchase">My purchase</a></li>
                                        <li><a class="url" data-url="MyAccomplishment">My accomplishment</a></li>
                                        <li><a class="url" data-url="MyFeedback">My feedback</a></li>
                                        <li><a class="url" data-url="changePassword">Change password</a></li>
                                        <li><a class="url" data-url="logout">Sign out</a></li>
                                    </ul> 
                                </li>
                            </ul>
                        </div>   
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="/onlinelearn/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/onlinelearn/assets/js/owl.carousel.min.js"></script>
    <script src="/onlinelearn/assets/js/script.js"></script>
</body>
</html>
