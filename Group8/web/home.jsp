<%-- 
    Document   : home
    Created on : Jul 9, 2020, 9:15:26 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Watch</title>
        <!-- Bootstrap CSS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="search-new" style="float:right; padding-bottom: 30px;">
            <form method="get"  _lpchecked="1">
                <input type="text" value="" name="s" id="s" autocomplete="off" placeholder="Tìm sản phẩm"
                       class="snize-input-style">
                <input type="hidden" name="post_type" value="product">
                <input type="submit" value="Go" class="button active filled">
            </form>
            <span class="et-close-results"></span>
            <div class="et-search-result"></div>
        </div>


        <nav class=" navbar navbar-expand-md navbar-light bg-light sticky-top" style="width: 100%;">
            <a class="navbar-branch" href="index.html">
                <img src="./Watch.png" height="80px" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="home" class="nav-link " style="padding-left: 50px;">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" style="padding-left: 50px;">Man</a>
                    </li>
                    <li class="nav-item">
                        <a href="login.jsp" class="nav-link" style="padding-left: 50px;">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="./User/register.jsp" class="nav-link" style="padding-left: 50px;">Signin</a>
                    </li>


                </ul>
            </div>
        </nav>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="padding-bottom: 50px;">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" style="padding-top: 30px;">
                <div class="carousel-item active">
                    <img src="./Img/lookbook.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item active">
                    <img src="./Img/1.jpg" class="d-block w-100" alt="...">
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="container-fluid padding">
            <div class="row text-center padding">
                <table border="1" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Amount</th>
                            <th>Gender</th>
                            <th>Guarantee</th>
                            <th>Discount</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ProductsDAO pDAO = new ProductsDAO();
                            ResultSet rs = pDAO.getAllProducts();
                            while (rs.next()) {
                                
                                out.print("<tr>");
                                out.print("<td>" + rs.getInt("pId") + "</td>");
                                out.print("<td>" + rs.getString("pName") + "</td>");
                                out.print("<td>" + rs.getDouble("pBprices") + "</td>");
                                out.print("<td>" + rs.getInt("pAmount") + "</td>");
                                out.print("<td>" + rs.getString("pGender") + "</td>");
                                out.print("<td>" + rs.getString("pGuarantee") + "</td>");
                                out.print("<td>" + rs.getString("pDiscount") + "</td>");
                                out.print("<td>" + rs.getString("pDescription") + "</td>");
                                out.print("<td> <a href='CartController?id=" + rs.getInt("pID") + "'>Buy</td>");
                                out.print("</tr>");
                            }

                        %>
                        <!--            <img src="./Img/1.png" width="200px" alt="imgeas"/>-->
                    </tbody>
                </table>
                
            </div>
        </div>
        <div class="span6 a-right" style="background-color: brown; padding-top: 50px;">
            <div id="text-6" class="footer-sidebar-widget widget_text">
                <div class="textwidget"><a

            </div>
        </div>
        <div class="fotter">
            <div class="footer-copyright text-center py-3">
                © 2020 1997 Watch ®
            </div>
        </div>
    </div>

</body>
</html>
