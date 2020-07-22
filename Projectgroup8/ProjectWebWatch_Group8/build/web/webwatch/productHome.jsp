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
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="shop.jsp">shop</a></li>
                                        <li><a href="about.jsp">about</a></li>

                                        <li><a href="blog-details.jsp">Blog</a>

                                        </li>

                                       
                                    </ul>
                                </nav>
                            </div>
                            <!-- Header Right -->
                            <div class="header-right">
                                <ul>
                                    <li>
                                        <div class="nav-search search-switch">
                                            <%
                                                Cookie[] cookies = request.getCookies();
                                                if (cookies.length > 1) {
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("user")) {
                                                            out.print(" <div class='header-right'><div class='nav-search search-switch'><ul>");
                                                            out.print("<li><a style='color: black' href='#'>" + cookie.getValue() + "</li></a>");

                                                            out.print("<li><a style='color: black' href='../LoginControllers'><span class='glyphicon glyphicon-log-out'/></li></a>");
                                                            out.print("</ul></div></div>");
                                                        }
                                                    }
                                                } else {
                                                    out.print("<div class='header-right'><div class='nav-search search-switch'><ul>");
                                                    out.print("<a href='../webwatch/login.jsp'><span class='flaticon-user'>");
                                                    out.print("<a href='cart.jsp'><span class='flaticon-shopping-cart'>");
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
        <main>
            <!-- Hero Area Start-->
            <!-- Hero Area End-->
            <!-- Latest Products Start -->
            <sql:setDataSource var="conn" scope="session"
                               url="jdbc:mysql://localhost/group8"
                               user="root" password=""
                               driver="com.mysql.jdbc.Driver"/>
            <sql:query var="product" dataSource="${conn}">
                Select * from product
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
                                        <div class="single-popular-items mb-50 text-center">
                                            <div class="popular-img">
                                               <img src="../${row.pImage}" alt="">
                                                <div class="img-cap">
                                                    <span>Add to cart</span>
                                                </div>
                                                <div class="favorit-items">
                                                    <span class="flaticon-heart"></span>
                                                </div>
                                            </div>
                                            <div class="popular-caption">
                                                <h3><a href="login.jsp"><c:out value="${row.pName}"/></a></h3>
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

    </body>
</html>












