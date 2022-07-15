<%-- 
    Document   : reject
    Created on : Jul 10, 2022, 2:36:50 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <title>Admin - Not Authentication</title>
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <div class="row component" style="align-items: center;color: #fff; font-weight: 700;background: url(/onlinelearn/assets/img/bg.jpg); height:650px">
                <div class="col-12">
                    <h1 class="row col-12">
                        From online learn.
                    </h1>
                    <div class="row col-12 text-none">
                        You haven't been login yet or haven't any permissions at here!
                    </div>
                    <div class="btn url row btn-back" data-url="home" >Back to home</div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
    </body>
</html>
