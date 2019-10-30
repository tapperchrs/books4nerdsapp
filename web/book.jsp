<%-- 
    Document   : book
    Created on : Oct 28, 2019, 1:26:42 PM
    Author     : 01792538
--%>
<%@page import="java.sql.*, org.apache.derby.jdbc.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String isbn = request.getParameter("isbn");
    String sql;
    String dbURI = "jdbc:derby://localhost:1527/bookstore";
    DriverManager.registerDriver(new ClientDriver());
    Connection con = DriverManager.getConnection(dbURI, "app", "app");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from app.books where isbn = '" +isbn +"'");
    rs.next();
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" id="index" lang=""> <!--<![endif]-->
    <%@include file="WEB-INF/jspf/HEAD.jspf" %>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <div id="header"></div>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="book">
            <div class="container">
                <div class="col-lg-4">
                    <img id="bookpageimg" src="images/KillerInteractiveSites.gif" alt="Killer Interactive"/>
                </div>
                <div class="col-lg-8">
                    <h1 class="col-lg-12" id="bookpagetitle"><%= rs.getString("title")%></h1>
                    <h2 class="col-1g-12" id="author">Author: 
                    </h2>
                    <h2 class="col-1g-12" id="isbn">ISBN: ________</h2>
                    <h2 class="col-lg-12" id="price">Price: $________</h2>
                    <h2 class="col-lg-12" id="avail">Availability: ________</h2>
                    <h2 class="col-lg-12" id="review">Average Customer Review: <i class="material-icons">star star star star star_border</i></h2>
                    <div class="col-lg-12 btns">
                        <div class="col-md-12">
                            <p><a class="btn btn-primary col-md-6" href="checkout.jsp" role="button"><i class="material-icons">payment</i></a>
                                <a class="btn btn-primary col-md-6" href="cart.jsp" role="button"><i class="material-icons">add_shopping_cart</i></a>
                            </p>
                        </div>                       </div>
                </div>
            </div>
        </div>
        <div class="container book-content">
            <!-- Example row of columns -->
            <div class="desc col-lg-12">
                <div class="sticky">
                    <h1 class="col-lg-12">
                        Description 
                    </h1>
                </div>
                <div class="col-md-12">
                    <p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                    <p>
                        Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.
                    </p>
                    <p>
                        Fusce convallis, mauris imperdiet gravida bibendum, nisl turpis suscipit mauris, sed placerat ipsum urna sed risus. In convallis tellus a mauris. Curabitur non elit ut libero tristique sodales. Mauris a lacus. Donec mattis semper leo. In hac habitasse platea dictumst. Vivamus facilisis diam at odio. Mauris dictum, nisi eget consequat elementum, lacus ligula molestie metus, non feugiat orci magna ac sem. Donec turpis. Donec vitae metus. Morbi tristique neque eu mauris. Quisque gravida ipsum non sapien. Proin turpis lacus, scelerisque vitae, elementum at, lobortis ac, quam. Aliquam dictum eleifend risus. In hac habitasse platea dictumst. Etiam sit amet diam. Suspendisse odio. Suspendisse nunc. In semper bibendum libero.
                    </p>
                </div>
            </div>
        </div>
        <div class="related">
            <div class="container">
                <h1 class="row2 col-lg-12">
                    Related Books
                </h1>
                <div class="col-lg-3">
                    <img src="images/bookimg/CreatingVirtualStore.gif" alt=""/>
                    <p class="col-sm-12 subtitle">Creating the Virtual Store</p>
                    <p class="col-sm-12"><i class="material-icons">star star star star_border star_border</i></p>
                    <p class="col-sm-12">Price: $__.__</p>
                </div>
                <div class="col-lg-3">
                    <img src="images/bookimg/NonDesignerWebBook.gif" alt=""/>
                    <p class="col-sm-12 subtitle">Non Designer Web Book</p>
                    <p class="col-sm-12"><i class="material-icons">star star star star star_border</i></p>
                    <p class="col-sm-12">Price: $__.__</p>
                </div>
                <div class="col-lg-3">
                    <img src="images/bookimg/WebPageDesign.gif" alt=""/>
                    <p class="col-sm-12 subtitle">Web Page Design</p>
                    <p class="col-sm-12"><i class="material-icons">star star star star star</i></p>
                    <p class="col-sm-12">Price: $__.__</p>
                </div>
                <div class="col-lg-3">
                    <img src="images/bookimg/WebPubHTML.JPG" alt=""/>
                    <p class="col-sm-12 subtitle">Web Publishing with HTML</p>
                    <p class="col-sm-12"><i class="material-icons">star star star_border star_border star_border</i></p>
                    <p class="col-sm-12">Price: $__.__</p>
                </div>
            </div>
        </div>
        <div class="recommend">
            <div class="container">
                <div class="sticky">
                    <h1 class="col-lg-12">User Reviews</h1>
                </div>

                <div class="col-lg-12">

                    <div class="rec col-lg-12">
                        <img class="col-lg-2" src="images/bezos.jpg" alt=""/>
                        <div class="col-lg-7 content">
                            <h2>Jeff Bezos:  <i class="material-icons">star star star star star_half</i></h2>

                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p class="note">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p class="note">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                        </div>
                        <div class="col-lg-2 bio">
                            <h2>Reviewer Profile</h2>

                            <div class="bio-info">
                                <hr>
                                <p>User: imtheRichest89</p>
                                <p>Member Since: 2009</p>
                                <p># of Reviews: 23</p>
                                <p>Followers: 3.7k</p>
                                <p>Rating: 81%</p>
                                <hr>
                            </div>

                            <p>What would you give this review?</p>
                            <p><i class="material-icons">thumb_up</i><i class="material-icons">thumb_down</i></p>

                        </div>
                    </div>

                    <div class="rec col-lg-12">
                        <img class="col-lg-2 people" src="images/jobs.jpg" alt=""/>
                        <div class="col-lg-7 content">
                            <h2>Steve Jobs:  <i class="material-icons"> star star star_half star_border star_border</i></h2>

                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                        </div>

                        <div class="col-lg-2 bio">
                            <h2>Reviewer Profile</h2>

                            <div class="bio-info">
                                <hr>
                                <p>User: ihateALLbooks</p>
                                <p>Member Since: 2005</p>
                                <p># of Reviews: 46</p>
                                <p>Followers: 1.2k</p>
                                <p>Rating: 87%</p>
                                <hr>
                            </div>

                            <p>What would you give this review?</p>
                            <p><i class="material-icons">thumb_up</i><i class="material-icons">thumb_down</i></p>

                        </div>
                    </div>
                    <div class="rec col-lg-12">
                        <img class="col-lg-2 people" src="images/gates.jpg" alt=""/>
                        <div class="col-lg-7 content">
                            <h2>William Gates:  <i class="material-icons">star star star star star_border</i></h2>

                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                        </div>
                        <div class="col-lg-2 bio">
                            <h2>Reviewer Profile</h2>
                            <div class="bio-info">
                                <hr>
                                <p>User: mrmoneybags643</p>
                                <p>Member Since: 2004</p>
                                <p># of Reviews: 53</p>
                                <p>Followers: 1.0k</p>
                                <p>Rating: 92%</p>
                                <hr>
                            </div>

                            <p>What would you give this review?</p>
                            <p><i class="material-icons">thumb_up</i><i class="material-icons">thumb_down</i></p>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id="footer"></div>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>');</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
    </body>



</html>