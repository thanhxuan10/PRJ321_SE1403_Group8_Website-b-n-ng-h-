<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@page import="Models.Entity.Products"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="zxx">
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
                                        <li><a href="../webwatch/index.jsp">Home</a></li>
                                        <li><a href="products.jsp">shop</a></li>
                                        <li><a href="../webwatch/about.jsp">about</a></li>

                                        <li><a href="../webwatch/blog-details.jsp">Blog</a>

                                        </li>

                                        <li><a href="../webwatch/contact.jsp">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- Header Right -->
                            <div class="header-right">
                                <ul>
                                    <li>
                                        <div class="nav-search search-switch">
                                            <span class="flaticon-search"></span>
                                        </div>
                                    </li>
                                    <li> <a href="login.jsp"><span class="flaticon-user"></span></a></li>
                                    <li><a href="cart.jsp"><span class="flaticon-shopping-cart"></span></a> </li>
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
        <main>
            <!-- Hero Area Start-->
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





            <!-- Hero Area End-->
            <!--================Single Product Area =================-->
            <div class="product_image_area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="product_img_slide owl-carousel">
                                <div class="single_product_img">
                                    <%
                                        int id = 0;
                                        ProductsDAO pDao = new ProductsDAO();
                                        Products p = pDao.getProducts(Integer.parseInt(request.getParameter("id")));
                                        out.print("<img src='../" + p.getpImage() + " 'alt='#' class='img-fluid'>");
                                    %>

                                </div>
                                <div class="single_product_img">
                                    <%
                                        out.print("<img src='../" + p.getpImage() + " 'alt='#' class='img-fluid'>");
                                    %>
                                </div>
                                <div class="single_product_img">
                                    <%
                                        out.print("<img src='../" + p.getpImage() + " 'alt='#' class='img-fluid'>");
                                    %>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-8">
                            <div class="single_product_text text-center">
                                <input type="hidden" value="${param.id}" name="id"/>
                                <h3><%out.print(p.getpName());%></h3>
                                <p>
                                    <%
                                        out.print(p.getpBprices());
                                    %><br/>
                                    <%out.print(p.getpGender());%><br/>
                                    <%out.print(p.getpGuarantee());%><br/>
                                    <%out.print(p.getpDescription());%><br/>
                                </p>
                                <div class="card_area">

                                    <div class="add_to_cart">
                                        
                                        <c:if test = "${!buy}"> 
                                            <a href='../CartController?id=${param.id}' class="btn_3">add to cart</a>
                                        </c:if>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================End Single Product Area =================-->
            <!-- subscribe part here -->

            <!-- subscribe part end -->
        </main>

        <!--? Search model Begin -->

        <!-- Search model end -->

        <!-- JS here -->

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

        <!-- swiper js -->
        <script src="./assets/js/swiper.min.js"></script>
        <!-- swiper js -->
        <script src="./assets/js/mixitup.min.js"></script>
        <script src="./assets/js/jquery.counterup.min.js"></script>
        <script src="./assets/js/waypoints.min.js"></script>

    </body>

</html>