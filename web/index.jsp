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
        <%@include file="WEB-INF/jspf/HEAD.jspf" %>
        <body>
            <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
            <div id="header"></div>

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container">
                    <%
                        rs.next();
                    %>
                    <div class="jumbo-content col-lg-8">
                        <h1>Books 4 Nerds Presents:</h1>
                        <h2>Deal of The Day</h2>
                        <p><%= rs.getString("title")%></p>
                        <p>15% Off + Free Shipping</p>
                        <div class="mini-img col-md-12">
                            <img src="images/books4nerds_secondary_black_transparent.png" alt=""/>
                        </div>
                        <p class="col-md-12"><a class="btn btn-primary btn-lg" href="book.jsp?isbn=<%= rs.getString("isbn")%>" role="button">View Book &raquo;</a></p>

                    </div>
                    <div class="jumbo-image col-lg-4">
                        <img src="<%= rs.getString("coverpic")%>" alt=""/>
                    </div>
                    <%

                    %>
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

                    <div class="col-md-4">
                        <h2><%= rs.getString("title")%></h2>
                        <img src="<%= rs.getString("coverpic")%>" alt=""/>
                        <h4 style="text-align: center; font-size: 16px;">
                            <%
                                int stars = rs.getInt("stars");
                                for (int i = 0; i < stars; i++) {
                            %>
                            <i style="color: gold;" class="material-icons">star</i>
                            <%
                                }
                                int starsEMP = 5 - rs.getInt("stars");
                                for (int j = 0; j < starsEMP; j++) {
                            %>
                            <i style="color: black;" class="material-icons">star_border</i>
                            <%
                            }
                            %>

                        </h4>
                        <p id="justify"> <%= rs.getString("description")%> </p>
                        <div class="col-md-12">
                            <p><a class="btn btn-primary col-md-6" href="book.jsp?isbn=<%= rs.getString("isbn")%>" role="button"><i class="material-icons">search</i></a>
                                <a class="btn btn-primary col-md-6" href="cart.jsp" role="button"><i class="material-icons">add_shopping_cart</i></a>
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
