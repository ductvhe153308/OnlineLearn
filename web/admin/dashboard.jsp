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
        <title>JSP Page</title>
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">

        </div>
        <script src="static/js/dashboard/dashboard.js"></script>
        <script>
            Dashboard.init();
        </script>
    </body>
</html>
