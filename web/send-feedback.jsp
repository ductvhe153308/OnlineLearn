CHECKED<%-- 
    Document   : send_feedback
    Created on : Jun 24, 2022, 10:50:55 PM
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
        <style>
            .send-feed-back-form > table > tbody > tr > td{
                padding-bottom: 20px !important;
            }
        </style>
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
                                        <!--<li class="breadcrumb-item active" aria-current="page">Send Feedback</li>-->
                                    </ol>
                                </nav>
                                <h2 class="breadcrumb-title">Send Feedback</h2>
                            </div>
                        </div>
                    </div>
                </div> 
                <form class="send-feed-back-form" style="padding-top: 50px" name="SendFeedbackPost" action="SendFeedback" method="post">
                    <table align="center" border="0">
                        <tr>
                            <td align="center"><B>How did you find this site?</B></td> 
                            <td align="center"> 
                                <select name="how_find_this_site" size="1">
                                    <option value = "Another Website" selected>Another Website</option>
                                    <option value = "A search engine">A search engine</option>
                                    <option value = "A friend told you">A friend told you</option>
                                    <option value = "From an email">From an email</option>
                                    <option value = "Another way not listed here">Another way not listed here</option>
                                </select>
                            </td>    
                        </tr>

                        <tr  style="margin-top: 10px">
                            <td align="center"><b>How would you rate my website:</b></td> 
                            <td ALIGN="CENTER"> 
                                <input TYPE="radio" NAME = "rating" VALUE = "Excellent" CHECKED > Excellent 
                                <input TYPE="radio" NAME = "rating" VALUE = "Good"> Good 
                                <input TYPE="radio" NAME = "rating" VALUE = "Average" > Average 
                                <input TYPE="radio" NAME = "rating" VALUE = "Poor"> Poor 
                               
                            </td>       
                        </tr>

                        <tr>
                            <td ALIGN="CENTER"><B>Comments or Suggestions:</B></td> 
                            <td ALIGN="CENTER"> 
                                <textarea ROWS="6" COLS="40" WRAP="PHYSICAL" Name="comment" placeholder="Enter any comments or suggestions you have" required="required"></textarea>
                            </td>
                        </tr>

                        <tr>
                            <td ALIGN="CENTER"><B>Do you think this form looks nice?</B></td> 
                            <td ALIGN="CENTER"> 
                                <INPUT TYPE="CHECKBOX" NAME="voting" VALUE="yes">
                            </td>
                        </tr>

                        <tr>
                            <td ALIGN="LEFT">
                                <input TYPE="SUBMIT" VALUE="Send Comments" ALIGN="MIDDLE">  &nbsp; &nbsp;
                                <input TYPE="RESET" VALUE="Clear Form" ALIGN="MIDDLE"> 
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
