 <%-- 
    Document   : login
    Created on : 05-06-2022, 22:22:43
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="account-page">

        <div class="main-wrapper">

            <div class="bg-pattern-style" style="min-height: 100vh">
                <div class="content">

                    <div class="account-content">
                        <div class="account-box">
                            <div class="login-right">
                                <div class="login-header">
                                    <h3>Sign in <span>Mentoring</span></h3>
                                    <p class="text-muted">Access to our dashboard</p>
                                </div>
                                <form action="account" method="post">
                                    <div class="form-group">
                                        <label class="form-control-label">Email Address</label>
                                        <input type="text" name="email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-control-label">Password</label>
                                        <div class="pass-group">
                                            <input type="password" name="password" class="form-control pass-input">
                                            <span class="fas fa-eye toggle-password"></span>
                                        </div>
                                    </div>
                                    <div class="text-end">
                                        <a class="forgot-link" href="recover.jsp">Forgot Password ?</a>
                                    </div>
                                    <button class="btn btn-primary login-btn" type="submit">Sign in</button>
                                    <div class="text-center dont-have">Don’t have an account? <a href="register.jsp">Register</a></div>
                                    <div style="color: red">
                                        ${status}
                                        ${mess}
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        <script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/home.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:38 GMT -->
</html>