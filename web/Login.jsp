<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <style>
            /* Mã CSS ? ?ây */

            /* CSS cho ô nh?p li?u CAPTCHA */
            .captcha-input {
                width: auto; /* ??t chi?u r?ng t? ??ng ?? ô nh?p li?u ch? chi?m ph?n còn l?i c?a không gian */
                max-width: 150px; /* ??t chi?u r?ng t?i ?a c?a ô nh?p li?u */
                display: inline-block; /* Hi?n th? ô nh?p li?u trên cùng m?t dòng */
                vertical-align: middle; /* C?n ch?nh theo chi?u d?c */
            }

            /* CSS cho nút làm m?i CAPTCHA */
            .captcha-container button {
                margin-left: 5px; /* T?o kho?ng cách v?i ô nh?p li?u */
                vertical-align: middle; /* C?n ch?nh theo chi?u d?c */
            }

            /* CSS cho hình ?nh CAPTCHA */
            .captcha-container img {
                max-height: 99px; /* ??t chi?u cao t?i ?a c?a hình ?nh */
                vertical-align: middle; /* C?n ch?nh theo chi?u d?c */
            }
        </style>
        <title>Login Form</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <p class="text-danger">${mess}</p>
                <p class="text-danger">${mess1}</p>
                <p style="color: green">${mess2}</p>
                <input name="user"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                <div class="captcha-container">
                    <img src="captcha" alt="CAPTCHA Image" id="captchaImage">
                    <button type="button" class="btn btn-sm btn-info" id="refresh-captcha">
                        <i class="fas fa-sync-alt"></i>
                    </button>
                    <input type="text" name="captcha" placeholder="Enter CAPTCHA" class="form-control captcha-input" required>
                </div>


                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    
                    <a href="forgotPassword.jsp" >Forgot password?</a>
                </div>

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                <input name="email" type="email" id="user-email" class="form-control" placeholder="Email(Someone@example.com)" required autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">

                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }

            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            })
        </script>
         <script>
        $(document).ready(function(){
            $("#refresh-captcha").click(function(){
                $("#captchaImage").attr("src", "captcha?timestamp=" + new Date().getTime());
            });
        });
    </script>
    </body>
</html>