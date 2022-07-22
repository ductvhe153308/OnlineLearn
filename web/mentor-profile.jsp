<%-- 
    Document   : mentor-profile
    Created on : Jun 22, 2022, 11:01:15 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/profile-mentee.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:15 GMT -->
    <head>
        <jsp:useBean id="m" class="dal.AccountDAO" scope="request"></jsp:useBean>
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

            <div class="main-wrapper">

            <%@include file="header.jsp" %>
            <div class="content">
                <div class="container">
                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body">
                            <div class="mentor-widget">
                                <div class="user-info-left align-items-center">
                                    <div class="mentor-img d-flex flex-wrap justify-content-center">
                                        <div class="pro-avatar">
                                            <img style="width: 100px; height: 100px; border-radius: 50%" src="assets/img/user/${x.pfp}" alt="User Image">
                                        </div>
                                        <!--                                        <div class="rating">
                                                                                    <i class="fas fa-star filled"></i>
                                                                                    <i class="fas fa-star filled"></i>
                                                                                    <i class="fas fa-star filled"></i>
                                                                                    <i class="fas fa-star filled"></i>
                                                                                    <i class="fas fa-star"></i>
                                                                                </div>-->
                                        <div class="mentor-details m-0">
                                            <p class="user-location m-0"><i class="fas fa-map-marker-alt"></i> Tamil Nadu, India</p>
                                        </div>
                                    </div>
                                    <div class="user-info-cont">
                                        <h4 class="usr-name">${x.first_name} ${x.last_name}</h4>
                                        <p class="mentor-type">English Literature (M.A)</p>
                                        <div class="mentor-action">
                                            <p class="mentor-type social-title">Contact Me</p>
                                            <a href="javascript:void(0)" class="btn-blue">
                                                <i class="fas fa-comments"></i>
                                            </a>
                                            <a href="chat.html" class="btn-blue">
                                                <i class="fas fa-envelope"></i>
                                            </a>
                                            <a href="javascript:void(0)" class="btn-blue" data-bs-toggle="modal" data-bs-target="#voice_call">
                                                <i class="fas fa-phone-alt"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body custom-border-card pb-0">

                            <div class="tab-content pt-0">

                                <div role="tabpanel" id="biography" class="tab-pane fade show active">
                                    <div class="row">
                                        <div class="col-md-12">

                                            <div class="widget about-widget custom-about mb-0">
                                                <h4 class="widget-title">About Me</h4>
                                                <hr />
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                                <p class="mb-3">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body custom-border-card pb-0">

                            <div class="widget education-widget mb-0">
                                <h4 class="widget-title">My course</h4>
                                <hr />
                                <div class="experience-box" style="padding-bottom: 10px">
                                    <div class="submit-section" style="display: flex; justify-content: space-between; align-items: center"> 
                                        <span>View all ${x.first_name} ${x.last_name}'s Course</span>
                                        <a href="CourseByMentor?id=${x.aid}&name=${x.first_name}+${x.last_name}">
                                            <button type="submit" class="btn btn-primary submit-btn">
                                                <span>Mentor's Course</span>
                                            </button>
                                        </a>

                                    </div> 
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body custom-border-card pb-0">

                            <div class="widget education-widget mb-0">
                                <h4 class="widget-title">Personal Details</h4>
                                <hr />
                                <div class="experience-box">
                                    <ul class="experience-list profile-custom-list">
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Gender</span>
                                                    <div class="row-result">Male</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Date of Birth</span>
                                                    <div class="row-result">01 - 02 - 2000</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Where did you hear about us?</span>
                                                    <div class="row-result">Through web search</div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body custom-border-card pb-0">

                            <div class="widget experience-widget mb-0">
                                <h4 class="widget-title">Qualification</h4>
                                <hr />
                                <div class="experience-box">
                                    <ul class="experience-list profile-custom-list">
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Undergraduate College</span>
                                                    <div class="row-result">Coimbatore University</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Undergraduate Major</span>
                                                    <div class="row-result">Mathematics</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Graduate College</span>
                                                    <div class="row-result">Coimbatore University</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Type of Degree</span>
                                                    <div class="row-result">B.Sc (Maths)</div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="card col-10 me-auto ms-auto p-0">
                        <div class="card-body custom-border-card pb-0">

                            <div class="widget awards-widget m-0">
                                <h4 class="widget-title">Location</h4>
                                <hr />
                                <div class="experience-box">
                                    <ul class="experience-list profile-custom-list">
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Address 1</span>
                                                    <div class="row-result">No : 5 ABC Avenue</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Address 2</span>
                                                    <div class="row-result">National highway road</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Country</span>
                                                    <div class="row-result">India</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>City</span>
                                                    <div class="row-result">Coimbatore</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>State</span>
                                                    <div class="row-result">Tamil Nadu</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="experience-content">
                                                <div class="timeline-content">
                                                    <span>Postal Code</span>
                                                    <div class="row-result">641001</div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


            <%@include file="footer.jsp" %>

        </div>


        <div class="modal fade call-modal" id="voice_call">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">

                        <div class="call-box incoming-box">
                            <div class="call-wrapper">
                                <div class="call-inner">
                                    <div class="call-user">
                                        <img alt="User Image" src="assets/img/user/user.jpg" class="call-avatar">
                                        <h4>Jonathan Doe</h4>
                                        <span>Connecting...</span>
                                    </div>
                                    <div class="call-items">
                                        <a href="javascript:void(0);" class="btn call-item call-end" data-bs-dismiss="modal" aria-label="Close"><i class="material-icons">call_end</i></a>
                                        <a href="voice-call.html" class="btn call-item call-start"><i class="material-icons">call</i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade call-modal" id="video_call">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">

                        <div class="call-box incoming-box">
                            <div class="call-wrapper">
                                <div class="call-inner">
                                    <div class="call-user">
                                        <img class="call-avatar" src="assets/img/user/user.jpg" alt="User Image">
                                        <h4>Dr. Darren Elder</h4>
                                        <span>Calling ...</span>
                                    </div>
                                    <div class="call-items">
                                        <a href="javascript:void(0);" class="btn call-item call-end" data-bs-dismiss="modal" aria-label="Close"><i class="material-icons">call_end</i></a>
                                        <a href="video-call.html" class="btn call-item call-start"><i class="material-icons">videocam</i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.6.0.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>
    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/profile-mentee.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:15:15 GMT -->
</html>
