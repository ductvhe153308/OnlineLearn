<%-- 
    Document   : home
    Created on : 16-06-2022, 20:46:01
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentoring - Dashboard</title>
        <link rel="icon" href="/onlinelearn/assets/img/favicon.png">
        <link rel="stylesheet" href="/onlinelearn/admin/static/css/page.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/table.css">
        <link rel="stylesheet" href="/onlinelearn/assets/css/account.properties.css">
    </head>
    <body>
        <jsp:include page="static/layout/header.jsp" />
        <jsp:include page="static/layout/slide-bar.jsp" />
        <div id="page">
            <div class="row">
                <div class="col col-4">
                    <div class="row">
                        <div class="col-12 component" id="profile"></div>
                    </div>
                    <div class="row">
                        <div class="col-12 component">
                            <div class="component-header">Invoice Analytics</div>
                            <canvas id="invoice"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col col-8">
                    <div class="row">
                        <div class="col-4 component" id="members">
                            <div class="row">
                                <div class="col-3 circle bg-blue">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#009da6" class="bi bi-person-fill" viewBox="0 0 16 16"><path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/></svg>
                                </div>
                                <div class="col-3 big-num">
                                    ${members}
                                </div>
                            </div>
                            <div class="row text-mute">
                                Members
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-blue" style="width : ${members/5}%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 component" id="appointments">
                            <div class="row">
                                <div class="col-3 circle bg-green">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#3dd598" class="bi bi-credit-card-fill" viewBox="0 0 16 16"><path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0V4zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7H0zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1z"/></svg>
                                </div>
                                <div class="col-3 big-num">
                                    ${appointments}
                                </div>
                            </div>
                            <div class="row text-mute">
                                Appointments
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-green" style="width : ${appointments/5}%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 component" id="mentoringpoints">
                            <div class="row">
                                <div class="col-3 circle bg-orange">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#f39c12" class="bi bi-star-fill" viewBox="0 0 16 16"><path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/></svg>                                </div>
                                <div class="col-3 big-num">
                                    ${stars}
                                </div>
                            </div>
                            <div class="row text-mute">
                                Mentoring Points
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-orange" style="width : ${stars/5}%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 component">
                            <div class="component-header">Sales Analytics</div>
                            <canvas id="sale"></canvas>
                        </div>  
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 component" id="mentor">
                </div>
                <div class="col-6 component" id="mentee">
                </div>
            </div>
            <div class="row">
                <div class="col-12 component" id="course">
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Library for build chart!-->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="static/js/dashboard.js"></script>
        <script src="static/js/mentor.js"></script>
        <script src="static/js/mentee.js"></script>
        <script src="static/js/course.js"></script>
        <script src="/onlinelearn/assets/js/url.js"></script>
        <script>
            Dashboard.init();
        </script>
    </body>
</html>
