<%-- 
    Document   : login
    Created on : Oct 28, 2019, 1:32:13 PM
    Author     : 01792538
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" id="index" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Books 4 Nerds</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
        <link rel="icon" 
              type="image/png" 
              href="images/books4nerds_secondary_black_transparent.png">
        <link href="https://fonts.googleapis.com/css?family=Big+Shoulders+Display&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Miniver&display=swap" rel="stylesheet">
        <link    href="https://fonts.googleapis.com/css?family=Alegreya|Crimson+Text:400i|EB+Garamond|Laila:300|Playfair+Display&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Delius+Swash+Caps|Rochester|Rock+Salt|Satisfy|Sunshiney&display=swap" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 60px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>
            $(function () {
                $('#header').load('navbar.html');
                $('#footer').load('footer.html');
            });
        </script>   
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <div id="header"></div>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div id="checkout">

            <div class="container">
                <div class="col-lg-6 check">
                    <h1 class="col-lg-12" >Create an Account</h1>
                    <h2 class="col-sm-6">Enter your email</h2>
                    <input type="text" placeholder="Email" class="form-control col-sm-5">
                    <h2 class="col-sm-6">Enter your password</h2>
                    <input type="password" placeholder="Password" class="form-control col-sm-5">
                    <h2 class="col-sm-6">Re-enter your password</h2>
                    <input type="password" placeholder="Password" class="form-control col-sm-5">
                    <h2 class="col-sm-6">Security Email</h2>
                    <input type="text" placeholder="Security Email" class="form-control col-sm-5">
                    <p style="text-align: center; margin-top: 20px;" class="cart-title col-lg-12"><a class="btn btn-primary btn-lg" href="index.html" role="button">Create Account</a></p>
                </div>
                <div class="col-lg-6 check">
                    <h1 class="col-lg-12" >Sign In</h1>
                    <h2 class="col-sm-6">Email</h2>
                    <input type="text" placeholder="Email" class="form-control col-sm-5">
                    <h2 class="col-sm-6">Password</h2>
                    <input type="password" placeholder="Password" class="form-control col-sm-5">
                    <h2 style="text-align: right;" class="col-md-12"><a style="color: #3285DF;" href="index.html">Forgot Password?</a></h2>
                    <p style="text-align: center; margin-top: 20px;" class="cart-title col-lg-12"><a class="btn btn-primary btn-lg" href="index.html" role="button">Sign In</a></p>            

                </div>
            </div>
            
            <div id="footer"></div>
        </div>
        <script>window.jry || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
    </body>

</html>
