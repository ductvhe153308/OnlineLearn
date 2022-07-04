<%-- 
    Document   : mentor-register
    Created on : Jul 3, 2022, 12:02:10 AM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:16:02 GMT -->
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

            <%@include file="header.jsp" %>
            <div class="breadcrumb-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-12 col-12">
                            <nav aria-label="breadcrumb" class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                    <!--                                    <li class="breadcrumb-item">Profile Settings</li>-->
                                </ol>
                            </nav>
                            <h2 class="breadcrumb-title">Mentor register</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4 offset-md-4">
                            <div class="account-content">
                                <div class="row align-items-center justify-content-center">
                                    <div class="col-md-12 col-lg-6 login-right">
                                        <form action="">
                                            <div class="form-group form-focus">
                                                <input type="text" class="form-control floating">
                                                <label class="focus-label">Your working place</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <input type="text" class="form-control floating">
                                                <label class="focus-label">Your position</label>
                                            </div>
                                            <div class="form-group form-focus">
                                                <input type="password" class="form-control floating">
                                                <label class="focus-label">Your phone</label>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-check form-check-xs form-checkbox">
                                                    <input type="checkbox" class="form-check-input" name="agreeCheckboxUser" id="agree_checkbox_user">
                                                    <label class="form-check-label" for="agree_checkbox_user">I agree to Mentoring</label> <a tabindex="-1" href="privacy-policy-and-safety.jsp">Privacy Policy</a> &amp; <a tabindex="-1" href="terms.jsp"> Terms.</a>
                                                </div>
                                            </div>
                                            <button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Become a mentor</button>
                                        </form>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>

        </div>


        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/mentee-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:16:02 GMT -->
</html>