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

                            
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title"> ${quiz.description}</h4>
                                            </div>
                                            <c:forEach items="${quiz.choices}"  var="c">
                                                <div class="card-body">

                                                    <input type="radio" value="${q.quizId}" name="choice" > ${c.description} <br>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="blog-pagination">
                                        <nav>
                                            <ul class="pagination justify-content-center">
                                                <c:if test="${tag >1}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="QuizDetail?lessonId=${qId}&page=${page + 1}"><i class="fas fa-angle-double-left"></i></a>
                                                    </li>
                                                </c:if>
                                                <c:forEach begin = "1" end = "${endP}" var = "i">
                                                    <li class="page-item ${tag==i?"active":""} ">
                                                        <a class="page-link  " href="QuizDetail?lessonId=${qId}&index=${i}">${i}</a>
                                                    </li>   
                                                </c:forEach>

                                                <c:if test="${tag <endP}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="QuizDetail?lessonId=${qId}"><i class="fas fa-angle-double-right"></i></a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        </section>
                    </form>
                </div>
            </div>
        </div>




    </body>

</html>