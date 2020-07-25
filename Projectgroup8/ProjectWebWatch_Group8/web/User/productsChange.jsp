<%-- 
    Document   : products
    Created on : Jul 5, 2020, 9:22:47 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Watch shop | eCommers</title>


        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
         <style>
             .active-pink input.form-control[type=text] {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
  margin-right: 40px;
}
</style>
    </head>

    <body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


        <%
            String buySuccess = request.getParameter("buySuccess");
            if (buySuccess != null) {
                if (buySuccess.equals("1")) {
                    out.print("<script>window.alert('Mua hang thanh cong')</script>");
                    out.print("<script>location.href='products.jsp'</script>");
                    session.invalidate();
                } else {
                    out.print("<script>window.alert('Mua hang khong thanh cong')</script>");
                    out.print("<script>location.href='products.jsp/'</script>");
                    session.invalidate();
                }
            }
        %>












        <!--? Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <!--                    <img src="assets/img/logo/logo.png" alt="">-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header header-sticky">
                    <div class="container-fluid">
                        <div class="menu-wrapper">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.jsp"><img src="assets/img/logo/logo3.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>                                                
                                    <ul id="navigation">  
                                        <li><a style="font-size: 30px" href="../webwatch/index.jsp">Home</a></li>
                                        <li><a style="font-size: 30px" href="products.jsp">shop</a></li>
                                        <li><a style="font-size: 30px"  href="../webwatch/about.jsp">about</a></li>

                                       


                                    </ul>
                                </nav>
                            </div>
                            <div class="header-right">
                                <ul>
                                    <li>
                                        <div class="nav-search search-switch">
                                            <%
                                                Cookie[] cookies = request.getCookies();
                                                boolean check = false;
                                                if (cookies.length > 1) {
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("user")) {
                                                            check = true;

                                                        } else if (cookie.getName().equals("useradmin")) {
                                                            check = true;
                                                        }
                                                    }
                                                } 
                                                if (check) {
                                                    String uId = "";
                                                    for (Cookie c : cookies) {
                                                        String cName = c.getName();
                                                        if (cName.equals("uId")) {
                                                            uId = c.getValue();
                                                        }
                                                    }
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("user")) {
                                                            out.print(" <div class='header-right'><div class='nav-search search-switch'><ul>");
                                                            out.print("<li><a style='color: black' href='../webwatch/confirmation.jsp?uId=" + Integer.parseInt(uId) + "'>" + cookie.getValue() + "</li></a>");

                                                            out.print("<li><a style='color: black;margin-left: 15px' href='../LoginControllers'><i class='fas fa-sign-out-alt'></i></li></a>");
                                                            out.print("<a href='cart.jsp'><span class='flaticon-shopping-cart'></span></a>");
                                                            out.print("</ul></div></div>");
                                                        } else if (cookie.getName().equals("useradmin")) {
                                                            response.sendRedirect("../Admin");
                                                        }
                                                    }
                                                } else {
                                                    out.print("<div class='header-right'><div class='nav-search search-switch'><ul>");
                                                    out.print("<a href='../webwatch/login.jsp'><span class='flaticon-user'></span></a>");
                                                    out.print("<a href='cart.jsp'><span class='flaticon-shopping-cart'></span></a>");
                                                    out.print("</ul></div></div>");
                                                }
                                            %>
                                        </div>
                                    
                                    </li>
                                </ul>
                            </div>
                        </div>

                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                       
            <!-- Header End -->
        </header>
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Watch Shop</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                         <form style="float:right" class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 mt-2">
  <i class="fas fa-search" aria-hidden="true"></i>
  <input name="txtSearch" class="form-control form-control-sm ml-2 w-55" type="text" placeholder="Search"
    aria-label="Search">
</form>
        <main>
            
            <sql:setDataSource var="conn" 
                               url="jdbc:mysql://localhost/group8"
                               user="root" password=""
                               driver="com.mysql.jdbc.Driver"/>
            <sql:query var="product" dataSource="${conn}">
                Select * from product where pAmount>0 and pStatus=0
            </sql:query>
            <section class="popular-items latest-padding">
                <div class="container">

                    <!-- Nav Card -->
                    <div class="tab-content" id="nav-tabContent">
                        <!-- card one -->
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="row">
                                <c:forEach var="row" items="${product.rows}">





                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
                                        <div class="single-popular-items mb-50 text-center" width="60px" height="60px">
                                            <div class="popular-img".. >
                                                <div style="width: 15rem; height: 18rem">
                                                    <img src="../${row.pImage}" alt="" width="100%" height="100%">
                                                </div>
                                                <!--<img src="../img/Advance1.jpg" alt="">-->
                                                <div class="img-cap" >
                                                    <a href="product_details.jsp?id=${row.pId}"><span>See details</span></a>
                                                </div>
                                                <div class="favorit-items">
                                                    <span class="flaticon-heart"></span>
                                                </div>
                                            </div>
                                            <div class="popular-caption" style="width: 15rem; height: 6rem">
                                                <h3><c:out value="${row.pName}"/></h3>
                                                
                                            </div>
                                            <div class="popular-caption">
                                                
                                                <span><c:out value="${row.pBprices}"/></span>
                                            </div>
                                        </div>
                                    </div>






                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
                <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-12 col-lg-12 col-md-50 col-sm-12">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-50">
                                <!-- logo -->
                                <div class="footer-logo">
                                     <a href="index.html"><img src="assets/img/logo/logo4.png" alt=""></a> 
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>Asorem ipsum adipolor sdit amet, consectetur adipisicing elitcf sed do eiusmod tem.</p>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
               
                  
                </div>
                <!-- Footer bottom -->
                <div class="row align-items-center">
                    <div class="col-xl-7 col-lg-8 col-md-7">
                        <div class="footer-copy-right">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Be made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://www.facebook.com/moon.xuan.5" target="_blank">Group 8</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                  
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 col-md-5">
                        <div class="footer-copy-right f-right">
                            <!-- social -->
                            <div class="footer-social">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                        </footer>
        <!-- Latest Products End -->
        <!--? Shop Method Start-->

        <!-- Footer End-->

        <!--? Search model Begin -->
        <!--    <div class="search-model-box">
                <div class="h-100 d-flex align-items-center justify-content-center">
                    <div class="search-close-btn">+</div>
                    <form class="search-model-form">
                        <input type="text" id="search-input" placeholder="Searching key.....">
                    </form>
                </div>
            </div>-->
        <!-- Search model end -->

        <!-- JS here -->
        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Scroll up, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
   <!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

    </body>
</html>












