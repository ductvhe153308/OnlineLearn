<%-- 
    Document   : QuizDetial
    Created on : Jul 4, 2022, 11:15:04 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

        <div class="content">
            <div class="container">
                <div class="comp-sec-wrapper">
                    <form action="QuizDetail" method="post">
                        <section class="comp-section">
                            <div class="comp-header">
                                <h3 class="comp-title">Quiz</h3>
                                <div class="line"></div>
                            </div>
                             <c:forEach items="${quiz}" var="q">
                                ${q.mark} 
                                ${q.status}
                            </c:forEach>
                             
                        </section>
                    </form>
                </div>
            </div>
        </div>
    </body>

</html>