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
     <body class="account-page">
         <div class="main-wrapper">
             <div class="bg-pattern-style bg-pattern-style-register">
                 <div class="content">
                     <div class="account-content">
                         <div class="account-box">
                             <div class="login-right">
                                 <div class="login-header">
                                     <h3><span>Mentoring</span> Register</h3>
                                     <p class="text-muted">Access to our dashboard</p>
                                 </div>
                                <form action="register_controller" method="post">
                                     <div class="row">
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                                 <label class="form-control-label">First Name</label>
                                                 <input id="first-name" type="text" class="form-control" name="first_name" autofocus="">
                                             </div>
                                         </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                                 <label class="form-control-label">Last Name</label>
                                                 <input id="last-name" type="text" class="form-control" name="last_name">
                                             </div>
                                         </div>
                                     </div>
                                     <div class="form-group">
                                          <label for="gender">Gender</label>
                                                 <select name="gender" id="gender" class="form-control">
                                                       <option value="1">Male</option>
                                                     <option value="0">Female</option>
                                                  </select>
                                     </div>
                                     <div class="form-group">
                                         <label class="form-control-label">Email Address</label>
                                         <input id="email" type="email" class="form-control" name="email">
                                     </div>
                                     <div class="row">
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                                 <label class="form-control-label">Password</label>
                                                 <input id="password" type="password" class="form-control" name="password">
                                             </div>
                                         </div>
                                         <div class="col-lg-6">
                                             <div class="form-group">
                                                 <label class="form-control-label">Confirm Password</label>
                                                 <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                                             </div>
                                         </div>
                                     </div>
                                     <div class="form-group">
                                         <label class="form-control-label">Date of Birth</label>
                                          <input type="date" name="dob" placeholder="Date Of Birth"class="form-control"><br>
                                     </div>
                                     
                                    
                                     <button class="btn btn-primary login-btn" type="submit">Create Account</button>
                                     <div class="account-footer text-center mt-3">Already have an account? <a class="forgot-link mb-0" href="account">Login</a>
                                     </div>
                                     <div style="color: red">
                                        ${mess2}
                                    </div>
                                 </form>

                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>

         

</body>

</html>
