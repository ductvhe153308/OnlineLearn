

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <c:forEach items="${list}" var="ls" >  
                       
                            <div style="height: 100px; width: 50%; border: 2px solid black; padding-left: 30px; padding-right: 30px; margin-bottom: 50px; font-size: 18px;border-radius: 30px;font-weight: bold" class="hover">
                                <div style="padding-top: 35px;">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16" style="margin-right: 10px">
                                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z"/>
                                    </svg> 
                                    ${ls.lesson_order}   Quiz  ${ls.title}  : ${ls.quiz_history.mark}  <br>
                                    <c:if test="${ls.quiz_history.status == 0}">Not Pass</c:if>
                                    <c:if test="${ls.quiz_history.status == 1}">Pass</c:if> 
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
