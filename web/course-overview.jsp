<%-- 
    Document   : course-start-learning
    Created on : Jun 13, 2022, 9:17:22 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            .course-navbar a{
                display: block;
                padding-bottom: 50px;
                
            }
            
            .hover:hover{
                background: #AADEE1;
            }
        </style>
    </head>
</head>
<body>
    <div class="main-wrapper">
        <%@include file="header.jsp" %>
        <div style="display: flex; flex-direction: row">
            <div style="width: 250px;">
                <%@include file="right-navbar.jsp" %>
            </div>
            <div style="width: calc(100% - 220px);">
                <div class="row" style="display: flex; flex-direction: column; justify-content: center; margin-left: 15%; padding-top: 50px">
                    <c:forEach items="${list}" var="x">
                        <div style="height: 100px; width: 50%; border: 2px solid black; margin-bottom: 50px; font-size: 18px;border-radius: 30px" class="hover">
                            <div style="padding-top: 35px;">
                                <a href="LessonDetail?id=${x.id}&order=${x.lesson_order}&title=${x.title}">Lesson ${x.lesson_order}: ${x.title}
                                </a> 
                            </div>
                        </div>
                        <div style="height: 100px; width: 50%; border: 2px solid black; margin-bottom: 50px; font-size: 18px;border-radius: 30px" class="hover">
                            <div style="padding-top: 35px;">
                            <a href="QuizDetail?id=${x.id}">Quiz ${x.lesson_order}
                            </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>
