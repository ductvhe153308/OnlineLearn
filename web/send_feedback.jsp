<%-- 
    Document   : send_feedback
    Created on : Jun 24, 2022, 10:50:55 PM
    Author     : DuongHoangLe
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
    </head>
    <body>
        <%@include file="header.jsp" %>
        <section class="popular-course-section">
            <div class="container">
                <div class="breadcrumb-bar">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-md-8 col-12">
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                                        <!--                                        <li class="breadcrumb-item active" aria-current="page">Send Feedback</li>-->
                                    </ol>
                                </nav>
                                <h2 class="breadcrumb-title">Send Feedback</h2>
                            </div>
                        </div>
                    </div>
                </div> 
                <FORM style="padding-top: 50px" name="ParameterPost" action="/servlets-examples/PrintFormParams" method="post">
                    <table align="center" border="0">
                        <tr>
                            <td align="center"><B>How did you find this site?</B></td> 
                            <td align="center"> 
                                <select name="from" size="1">
                                    <option value = "Website" selected>Another Website</option>
                                    <option value = "search engine">A search engine</option>
                                    <option value = "friend">A friend told you</option>
                                    <option value = "email">From an email</option>
                                    <option value = "unlisted">Another way not listed here</option>
                                </select>
                            </td>    
                        </tr>
</table>
</FORM>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
