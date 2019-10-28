<%-- 
    Document   : index
    Created on : Oct 28, 2019, 12:19:47 PM
    Author     : 01792538
--%>
<%@page import="java.sql.*, org.apache.derby.jdbc.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dbURI = "jdbc:derby://localhost:1527/bookstore";
    String sql;
    jdbc:
    derby://localhost:1527/bookstore [ on APP]
    DriverManager.registerDriver(new ClientDriver());
    Connection con = DriverManager.getConnection(dbURI, "app", "app");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from books where special = 1");
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js" id="index" lang=""> <!--<![endif]-->
    <html>
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

            <link href="https://fonts.googleapis.com/css?family=Alegreya|Crimson+Text:400i|EB+Garamond|Laila:300|Playfair+Display&display=swap" rel="stylesheet">

            <link href="https://fonts.googleapis.com/css?family=Delius+Swash+Caps|Rochester|Rock+Salt|Satisfy|Sunshiney&display=swap" rel="stylesheet">

            <link href="https://fonts.googleapis.com/css?family=Montserrat:700&display=swap" rel="stylesheet">

            <link rel="stylesheet" href="css/bootstrap.min.css">

            <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
                  rel="stylesheet">
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
            <div class="jumbotron">
                <div class="container">
                    <div class="jumbo-content col-lg-8">
                        <h2>Books 4 Nerds Presents:</h2>
                        <h1>Deal of The Day</h1>
                        <p>Creating Killer Interactive Sites</p>
                        <p>15% Off + Free Shipping</p>
                        <div class="mini-img col-md-12">
                            <img src="images/books4nerds_secondary_black_transparent.png" alt=""/>
                        </div>
                        <p class="col-md-12"><a class="btn btn-primary btn-lg" href="book.html" role="button">View Book &raquo;</a></p>

                    </div>
                    <div class="jumbo-image col-lg-4">
                        <img src="images/KillerInteractiveSites.gif" alt=""/>
                    </div>
                </div>
            </div>
            <div class="container landing-content">
                <!-- Example row of columns -->
                <div class="row">
                    <h1 class="col-lg-12">
                        Featured Books
                    </h1>
                    <% 
                        while (rs.next()) {
                    %>   

                    <div class="col-md-6">
                        <h2><%= rs.getString("title")%></h2>
                        <img src="<%= rs.getString("coverpic") %>" alt=""/>
                        <p id="justify"> <%= rs.getString("description")%> </p>
                        <div class="col-md-12">
                            <p><a class="btn btn-primary col-md-6" href="book.html" role="button"><i class="material-icons">search</i></a>
                                <a class="btn btn-primary col-md-6" href="cart.html" role="button"><i class="material-icons">add_shopping_cart</i></a>
                            </p>
                        </div>                   
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

        <div id="footer"></div>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>');</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
    </body>



</html>
