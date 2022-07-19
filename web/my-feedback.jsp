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
                        <div style="border: 1px solid black; margin-bottom: 50px; padding: 30px">
                            <h4>Author: ${x.last_name} ${x.first_name}</h4>
                            <p>How do find this site?<span style="color: #00cc52">- ${x.how_find_this_site}</span> </p>
                            <p>How would you rate my website?<span style="color: #00cc52">- ${x.how_find_this_site} ${x.rating}</p>
                            <p>Comment or Suggestions<span style="color: #00cc52">- ${x.comment} </p>
                            <p>Do you think this my form looks like?<span style="color: #00cc52"> -  ${x.voting}</p>
                            <p>Feedback time:<span style="color: #00cc52"> ${x.feedback_time} </p>
                            <form id="delete_feedback" action="DeleteFeedback" method="post">
                                <div class="submit-section" style="display:  flex; justify-content: right;">
                                    <div>
                                        <select name="rating" size="1">
                                            <option value = "yes" selected>Another Website</option>
                                        </select>
                                    </div>

                                    <input class="btn btn-primary submit-btn" type="submit" value="submit" onclick="confirm_decision(${x.id});"/>
                                </div>
                            </form>

                        </div>
                    </c:forEach>
                </div>

            </div>
        </section>
        <%@include file="footer.jsp" %> 
        <script>
            function confirm_decision(id) {
                if (confirm("Do you want to delete this feedback id = " + id + " ?")) // this will pop up confirmation box and if yes is clicked it call servlet else return to page
                {
                    var feedback_id = id;
                    feedback_id.submit();
                } else {
                    return false;
                }
                return true;
            }
        </script>
    </body>
</html>
