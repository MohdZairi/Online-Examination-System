<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Online Examination</title>

    <link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
    <link rel="stylesheet" href="css/main.css">
    <link  rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">Online Quiz</span></div>
<div class="col-md-2 col-md-offset-4">
<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal">
    <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;
    <span class="title1"><b>Login</b></span></a></div>
<!-- script for login start -->
<script>
        function validate() {
            var email =
                document.forms.RegForm.email.value;
            var password =
                document.forms.RegForm.password.value;
            var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g; //Javascript reGex for Email Validation.

            if (email == "" ) {
                 error = " Please enter your e-mail address. ";
                  document.getElementById( "error_para" ).innerHTML = error;
                  return false;
            }
            else if (!regEmail.test(email))
            {
                error = " Please enter a valid e-mail address. ";
                  document.getElementById( "error_para" ).innerHTML = error;
                  return false;
            }
           
            if (password == "") {
                error = " Please enter your password. ";
                  document.getElementById( "error_para" ).innerHTML = error;
                  return false;
            }
                            

            return true;
        }
    </script>
<!-- script for login end -->

<!-- script for register start-->
<script>

</script>
<!-- script for register end -->
<!--sign in modal start-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content title1">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title title1"><span style="color:orange">Log In</span></h4>
                <?php 
                    if (isset($_GET['error'])) { ?>
						<p style= "color:red;" ><?php echo $_GET['error']; ?></p>
				<?php } ?>
                <p style="color:red;" id="error_para" ></p>
            </div>
            <div class="modal-body">
                <form class="form-horizontal"  action= "login.php" name="RegForm" onsubmit="return validate()" method="post">        
                    <fieldset>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="email"></label>  
                                <div class="col-md-6 ">           
                                    <input id="email" name="email" placeholder="Enter your email" class="form-control input-md " type="email">
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="password"></label>
                                <div class="col-md-6">
                                    <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">   
                                </div>
                        </div>

                        </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <input type="submit" class="btn btn-primary" name="login_form"
                                                value="Login" name="login_form" />
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
<!--sign in modal end-->

<!--sign up modal start-->
<div class="bg1">
    <div class="row">
        <div class="col-md-7"></div>
            <div class="col-md-4 panel">
                <form class="form-horizontal" name="regform" action="sign.php" onSubmit="return validateregister()" method="POST">
                    <fieldset>

                        <!-- Text name-->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for="name"></label>  
                                <div class="col-md-12">
                                    <input id="name" name="name" placeholder="Enter your name" class="form-control input-md" type="text">  
                                </div>
                        </div>

                        <!-- Text gender-->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for="gender"></label>
                                <div class="col-md-12">
                                    <select id="gender" name="gender" placeholder="Enter your gender" class="form-control input-md" >
                                    <option value="Male">Select Gender</option>
                                    <option value="M">Male</option>
                                    <option value="F">Female</option> </select>
                                </div>
                        </div>

                        <!-- Text dollege-->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for="name"></label>  
                                <div class="col-md-12">
                                    <input id="college" name="college" placeholder="Enter your college name" class="form-control input-md" type="text">               
                                </div>
                        </div>


                        <!-- Text email-->
                        <div class="form-group">
                            <label class="col-md-12 control-label title1" for="email"></label>
                                <div class="col-md-12">
                                    <input id="email" name="email" placeholder="Enter your email" class="form-control input-md" type="email">               
                                </div>
                        </div>

                        <!-- Text phone-->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for="mob"></label>  
                                <div class="col-md-12">
                                    <input id="phone" name="phone" placeholder="Enter your mobile number" class="form-control input-md" type="number">               
                                </div>
                        </div>


                        <!-- Text password-->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for="password"></label>
                                <div class="col-md-12">
                                    <input id="password" name="password" placeholder="Enter your password" class="form-control input-md" type="password">              
                                </div>
                        </div>

                        <!-- Text confirm password-->
                        <div class="form-group">
                            <label class="col-md-12control-label" for="cpassword"></label>
                                <div class="col-md-12">
                                    <input id="cpassword" name="cpassword" placeholder="Conform Password" class="form-control input-md" type="password">                
                                </div>
                        </div>
                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-12 control-label" for=""></label>
                                <div class="col-md-12"> 
                                    <input  type="submit" class="sub" value="Sign up" class="btn btn-primary"/>
                                </div>
                        </div>

                    </fieldset>
                </form>
            </div><!--col-md-6 end-->
        </div>
    </div>
</div>
<!--sign up modal close-->







</body>
</html>