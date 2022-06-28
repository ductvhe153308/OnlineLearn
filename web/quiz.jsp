<%-- 
    Document   : quiz
    Created on : Jun 15, 2022, 9:53:04 AM
    Author     : admin
--%>

<%@page import="utils.DBContext"%>
<%@page import="model.QuizType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>

<html lang="en">

<!-- Mirrored from mentoring-html.dreamguystech.com/template-1/components.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:37 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Mentoring</title>

<link rel="icon" href="assets/img/favicon.png" type="image/x-icon">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


   <c:set var="p" value="${page}" scope="session"/>
    <c:set var="qz" value="${quiz}" scope="session"/>
    <div class="container">

        <form action="${pageContext.request.contextPath}/quiz" method="POST">
            <fieldset id="${qz.questions[p-1].questionId}">
                <legend> Question: ${qz.questions[p-1].description}</legend><br>
                <c:set var="qzSelected" scope="session" value="${qz.questions[p-1].isSelected}"/>
                <input type="radio" id="${qz.questions[p-1].choices[j].choiceId}" name="${qz.questions[p-1].questionId}" value="${qz.questions[p-1].choices[0].choiceId}">
                <label for="${qz.questions[p-1].choices[0].choiceId}"><c:out value="${qz.questions[p-1].choices[0].description}"></c:out></label>
                <c:out value="${qz.questions[p-1].choices[0].choiceId}"></c:out>
                <br>
                <input type="radio" id="${qz.questions[p-1].choices[j].choiceId}" name="${qz.questions[p-1].questionId}" value="${qz.questions[p-1].choices[1].choiceId}">
                <label for="${qz.questions[p-1].choices[1].choiceId}"><c:out value="${qz.questions[p-1].choices[1].description}"></c:out></label>
                <c:out value="${qz.questions[p-1].choices[1].choiceId}"></c:out>
                <br>
                <input type="radio" id="${qz.questions[p-1].choices[j].choiceId}" name="${qz.questions[p-1].questionId}" value="${qz.questions[p-1].choices[2].choiceId}">
                <label for="${qz.questions[p-1].choices[2].choiceId}"><c:out value="${qz.questions[p-1].choices[2].description}"></c:out></label>
                <c:out value="${qz.questions[p-1].choices[2].choiceId}"></c:out>
                <br>
                <input type="radio" id="${qz.questions[p-1].choices[j].choiceId}" name="${qz.questions[p-1].questionId}" value="${qz.questions[p-1].choices[3].choiceId}">
                <label for="${qz.questions[p-1].choices[3].choiceId}"><c:out value="${qz.questions[p-1].choices[3].description}"></c:out></label>
                <c:out value="${qz.questions[p-1].choices[3].choiceId}"></c:out>
                <br>
            <c:if test="${p > 1}">
                <c:out value="${qz.questions[p-1].questionId}"></c:out>
                <a href="${pageContext.request.contextPath}/quiz?quizTypeId=${qz.quizType.quizTypeId}&page=${p - 1}&questionId=${qz.questions[p-1].questionId}"class="btn btn-success">Before</a>
                <c:set var="p" value="${page - 1}" scope="session"/>
            </c:if>
            <c:if test="${p < 9}">
                <a href="${pageContext.request.contextPath}/quiz?quizTypeId=${qz.quizType.quizTypeId}&page=${p + 1}&questionId=${qz.questions[p-1].questionId} " class="btn btn-success">Next</a>
                <c:set var="p" value="${page + 1}" scope="session"/>
            </c:if>
            <c:if test="${p == 9}">
                <a href="" class="btn btn-success" >Submit</a>
                <c:set var="p" value="${page}" scope="session"/>
            </c:if>
            </fieldset>
        </form>
    </div>

</body>
</html>