<%-- 
    Document   : my-feedback
    Created on : Jul 17, 2022, 1:01:48 PM
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
    </head>
    <body>
        <%@include file="header.jsp" %>
        <section class="popular-course-section">
            <div class="container">
                <div class="section-heading d-flex align-items-center">
                    <div class="heading-content">
                        <h2><span class="text-weight">My</span> Feedback <span class="header-right"></span></h2>
                    </div>
                </div>
                <div class="row"> 
                    <c:forEach items="${myfeedback}" var="x">
                        <div class="blog" style="margin-bottom: 50px !important; box-shadow: 5px 5px 15px rgb(183 183 183 / 25%) !important">
                            <div style="display: flex; flex-direction: row; justify-content: space-between">
                                <div>
                                    <h4>Author: ${x.last_name} ${x.first_name}</h4>
                                    <p>How do find this site?<span style="color: #00cc52">- ${x.how_find_this_site}</span> </p>
                                    <p>How would you rate my website?<span style="color: #00cc52">- ${x.how_find_this_site} ${x.rating}</p>
                                    <p>Comment or Suggestions<span style="color: #00cc52">- ${x.comment} </p>
                                    <p>Do you think this my form looks like?<span style="color: #00cc52"> -  ${x.voting}</p>
                                    <p>Feedback time:<span style="color: #00cc52"> ${x.feedback_time} </p>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary submit-btn" style="margin-right: 20px; width: 100px; height: 40px" onclick="return confirm('Are you sure you want to delete this feedback?')">
                                        <a href="DeleteFeedback?id=${x.id}" style="color: white;">Delete <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                            </svg></a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %> 
        <%
            String msg = request.getAttribute("delete_feedback_msg").toString();
            if (!msg.equals("")) {
                out.print("alert('Delete a feedback successfully');");
            }
        %>
    </body>
</html>
