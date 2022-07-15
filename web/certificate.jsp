<%-- 
    Document   : certificate
    Created on : Jul 7, 2022, 10:10:51 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
        <style type='text/css'>
            body, html {
                margin: 0;
                padding: 0;
            }
            body {
                color: black;
                display: table;
                font-family: Georgia, serif;
                font-size: 24px;
                text-align: center;
            }
            .container {
                border: 20px solid tan;
                width: 750px;
                height: 563px;
                display: table-cell;
                vertical-align: middle;
            }
            .logo {
                color: tan;
            }

            .marquee {
                color: tan;
                font-size: 48px;
                margin: 20px;
            }
            .assignment {
                margin: 20px;
            }
            .person {
                border-bottom: 2px solid black;
                font-size: 32px;
                font-style: italic;
                margin: 20px auto;
                width: 400px;
            }
            .reason {
                margin: 20px;
            }
        </style>
    </head>
    <body style="display: flex; justify-content: center; align-items: center">
        <div class="container">
            <div class="navbar-brand logo" style="background-color: white; padding: 10px">
                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
            </div>
            <div class="marquee">
                Certificate of Completion
            </div>

            <div class="assignment">
                This certificate is presented to
            </div>

            <div class="person">
                 ${user_name}
            </div>

            <div class="reason" style="padding-top: 50px">
                For complete 
                <span style="display: block"> 
                    <h1>
                        ${course_name}
                    </h1>
                </span>
                in July 7, 2022
            </div>
        </div> 
    </body>
</html>
