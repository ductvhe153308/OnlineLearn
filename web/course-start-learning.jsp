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
        </style>
    </head>
</head>
<body>
    <div class="main-wrapper">
        <%@include file="header.jsp" %>
        <div style="display: flex; flex-direction: row">
            <div class="navbar" style="width: 20%; display: flex; flex-direction: column;">
                <div class="course-navbar" style="font-size: 20px; font-weight: bold; padding: 20px">
                    <a href="#Overview">Overview</a>
                    <a href="#Grades">Grades</a>
                    <a href="#Discussion">Discussion Forums</a>
                    <a href="#Messages">Messages</a>
                    <a href="#Info">Course Info</a>
                </div>
            </div>
            <div style="width: 80%">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="blog-view">
                                <div class="blog blog-single-post">
                                    <div class="blog-image">
                                        <a href="javascript:void(0);"><img alt="" src="assets/img/blog/blog-01.jpg" class="img-fluid"></a>
                                    </div>
                                    <h3 class="blog-title">Lorem Ipsum is simply dummy text of the printing</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="profile.html"><img src="assets/img/user/user.jpg" alt="Post Author"> <span>Marvin Downey</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-calendar"></i>4 Dec 2019</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fa fa-tags"></i>HTML</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</body>
</html>
