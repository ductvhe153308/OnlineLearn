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

                        <tr  style="margin-top: 10px">
                            <td align="center"><b>How would you rate my website:</b></td> 
                            <TD ALIGN="CENTER"> 
                                <INPUT TYPE="radio" NAME = "rating" VALUE = "Excellent"> Excellent 
                                <INPUT TYPE="radio" NAME = "rating" VALUE = "Good"> Good 
                                <INPUT TYPE="radio" NAME = "rating" VALUE = "Average" CHECKED> Average 
                                <INPUT TYPE="radio" NAME = "rating" VALUE = "Poor"> Poor 
                                <INPUT TYPE="radio" NAME = "rating" VALUE = "Overhaul"> Needs an Overhaul
                            </TD>
                        </tr>

                        <TR>
                            <TD ALIGN="CENTER"><B>Comments or Suggestions:</B></TD> 
                            <TD ALIGN="CENTER"> 
                                <TEXTAREA ROWS="6" COLS="40" WRAP="PHYSICAL" Name="suggestions" placeholder="Enter any comments or suggestions you have"></TEXTAREA>
    </TD>
    </TR>
    
    <TR>
    <TD ALIGN="CENTER"><B>Do you think this form looks nice?</B></TD> 
    <TD ALIGN="CENTER"> 
    <INPUT TYPE="CHECKBOX" NAME="formrating" VALUE="yes">
    </TD>
    </TR>
   
    <TR>
    
    <TD ALIGN="LEFT">
    
    <INPUT TYPE="SUBMIT" VALUE="Send Comments" ALIGN="MIDDLE">  &nbsp; &nbsp;
    <INPUT TYPE="RESET" VALUE="Clear Form" ALIGN="MIDDLE"> 
    
    </TD>
    </TR>
</table>
</FORM>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
