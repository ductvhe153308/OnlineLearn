<%-- 
    Document   : course-navbar
    Created on : Jul 5, 2022, 9:59:21 AM
    Author     : dell
--%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/admin/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:17:16 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Mentoring</title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/feather.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">

            <div class="header">

                <div class="header-left">
                    <a href="index.html" class="logo">
                        <img src="assets/img/logo-white.png" alt="Logo">
                    </a>
                    <a href="index.html" class="logo logo-small">
                        <img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
                    </a>
                </div>

                </a>
                </a>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            </li>
                            <li>
                                <a href="index.html"><i class="feather-home"></i><span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="mentor.html"><i class="feather-user"></i><span>Mentor</span></a>
                            </li>
                            <li>
                                <a href="mentee.html"><i class="feather-users"></i><span>Mentee</span></a>
                            </li>
                            <li>
                                <a href="booking-list.html"><i class="feather-list"></i><span>Booking List</span></a>
                            </li>
                            <li>
                                <a href="categories.html"><i class="feather-disc"></i><span>Categories</span></a>
                            </li>
                            <li>
                                <a href="transactions-list.html"><i class="feather-dollar-sign"></i><span>Transactions</span></a>
                            </li>
                            <li>
                                <a href="settings.html"><i class="feather-settings"></i><span>Settings</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="feather-book"></i><span> Reports</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="invoices.html">Invoices List</a></li>
                                    <li><a href="invoice-grid.html">Invoices Grid</a></li>
                                    <li><a href="add-invoice.html">Add Invoices</a></li>
                                    <li><a href="edit-invoice.html">Edit Invoices</a></li>
                                    <li><a href="view-invoice.html">Invoice Details</a></li>
                                    <li><a href="invoices-settings.html">invoice settings</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="invoice-items.html"><i class="feather-star"></i><span>Items</span></a>
                            </li>
                            <li class="menu-title">
                                <span>Pages</span>
                            </li>
                            <li>
                                <a href="profile.html"><i class="feather-user-plus"></i><span>My Profile</span></a>
                            </li>
                            <li class="submenu active">
                                <a href="#"><i class="feather-book-open"></i><span>Blog</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="blog.html" class="active"> Blog </a></li>
                                    <li><a href="blog-details.html"> Blog Details </a></li>
                                    <li><a href="add-blog.html"> Add Blog </a></li>
                                    <li><a href="edit-blog.html"> Edit Blog </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="feather-lock"></i><span> Authentication </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="login.html"> Login </a></li>
                                    <li><a href="register.html"> Register </a></li>
                                    <li><a href="forgot-password.html"> Forgot Password </a></li>
                                    <li><a href="lock-screen.html"> Lock Screen </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="feather-alert-octagon"></i><span> Error Pages </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="error-404.html">404 Error </a></li>
                                    <li><a href="error-500.html">500 Error </a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="blank-page.html"><i class="feather-file"></i><span>Blank Page</span></a>
                            </li>
                            <li class="menu-title">
                                <span>UI Interface</span>
                            </li>
                            <li>
                                <a href="components.html"><i class="feather-layers"></i><span>Components</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="feather-sidebar"></i><span> Forms </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="form-basic-inputs.html">Basic Inputs </a></li>
                                    <li><a href="form-input-groups.html">Input Groups </a></li>
                                    <li><a href="form-horizontal.html">Horizontal Form </a></li>
                                    <li><a href="form-vertical.html"> Vertical Form </a></li>
                                    <li><a href="form-mask.html"> Form Mask </a></li>
                                    <li><a href="form-validation.html"> Form Validation </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="feather-layout"></i><span> Tables </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="tables-basic.html">Basic Tables </a></li>
                                    <li><a href="data-tables.html">Data Table </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);"><i class="feather-align-left"></i><span>Multi Level</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li class="submenu">
                                        <a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
                                        <ul style="display: none;">
                                            <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                                            <li class="submenu">
                                                <a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
                                                <ul style="display: none;">
                                                    <li><a href="javascript:void(0);">Level 3</a></li>
                                                    <li><a href="javascript:void(0);">Level 3</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0);"> <span>Level 1</span></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="page-wrapper">

            </div>

        </div>


        <script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/feather.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>

    <!-- Mirrored from mentoring-html.dreamguystech.com/template-1/admin/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Jun 2022 15:17:19 GMT -->
</html>