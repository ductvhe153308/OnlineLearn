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
                        <section class="comp-section" style="padding-bottom: 50px">
                            <div class="comp-header">
                                <h3 class="comp-title">Quiz</h3>
                                <div class="line"></div>
                            </div>
                             <c:forEach items="${quiz}" var="q" >
                                 <input type="test" value="${q.lesson_id}" name="id" hidden="hidden" >
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title">Quiz ${q.quizId-firtId +1} : ${q.description}</h4>
                                            </div>
                                            <c:forEach items="${q.choices}"  var="c">
                                                <div class="card-body">
                                                    <input type="radio" value="${c.choiceId}" name="choice${q.quizId-firtId +1}" > ${c.description} <br>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                             <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        </section>
                    </form>
                </div>
            </div>
        </div>




    </body>

</html>