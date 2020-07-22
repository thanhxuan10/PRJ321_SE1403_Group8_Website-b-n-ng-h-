<%-- 
    Document   : login
    Created on : Jul 7, 2020, 1:43:29 PM
    Author     : Admin
--%>

<%-- 
    Document   : login
    Created on : Jul 7, 2020, 1:40:09 PM
    Author     : Admin
--%>

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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="productHome.jsp">shop</a></li>
                                    <li><a href="about.jsp">about</a></li>
<!--                                    <li class="hot"><a href="#">Latest</a>
                                        <ul class="submenu">
                                            <li><a href="shop.jsp"> Product list</a></li>
                                            <li><a href="product_details.jsp"> Product Details</a></li>
                                        </ul>
                                    </li>-->
                                    <li><a href="blog-details.jsp">Blog</a>
<!--                                        <ul class="submenu">
                                            <li><a href="blog.jsp">Blog</a></li>
                                            <li><a href="blog-details.jsp">Blog Details</a></li>
                                        </ul>-->
                                    </li>
<!--                                    <li><a href="#">Pages</a>
                                        <ul class="submenu">
                                            <li><a href="login.jsp">Login</a></li>
                                            <li><a href="cart.jsp">Cart</a></li>
                                            <li><a href="elements.jsp">Element</a></li>
                                            <li><a href="confirmation.jsp">Confirmation</a></li>
                                            <li><a href="checkout.jsp">Product Checkout</a></li>
                                        </ul>
                                    </li>-->
                                    <li><a href="contact.jsp">Contact</a></li>
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

                                                            out.print("<li><a style='color: black' href='../LoginControllers'>Logout</li></a>");
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
    <main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Login</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================login_part Area =================-->
        <form action="LoginControllers" method="post">   </form>
        <section class="login_part section_padding "><!--
-->            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                                <h2>New to our Shop?</h2>
                                <p>There are advances being made in science and technology
                                    everyday, and a good example of this is the</p>
                                <a href='../User/register.jsp' class="btn_3">Create an Account</a>
                            </div>
                        </div>
                    </div>
            

                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner">
                                <h3>Welcome Back ! <br>
                                    Please Sign in now</h3>
                                <form class="row contact_form" action="../LoginControllers" method="post" novalidate="novalidate">
<!--                                    <form action="LoginControllers" method="post">-->
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="txtUsername" 
                                            placeholder="username">

                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="password" class="form-control" id="password" name="txtPassword" 
                                            placeholder="password">

                                    </div>
                                    <div class="col-md-12 form-group">
                                        <div class="creat_account d-flex align-items-center">
                                            <input type="checkbox" id="f-option" name="selector">
                                            <label for="f-option">Remember me</label>
                                        </div>
                                        <button type="submit" name="Login_user" value="submit" class="btn_3">
                                            Login
                                        </button>
                                         
<!--                                        <a class="lost_pass" href="#">forget password?</a>-->
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

<!--                </div>
            </div>-->

        </section>
         
        <!--================login_part end =================-->
    </main>
          
    
         
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
    
    <!-- Scroll up, nice-select, sticky -->
    <script src="./assets/js/jquery.scrollUp.min.js"></script>
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

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