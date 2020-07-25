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

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">



        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>






    </head>
    <body>

        <%
            String msg = request.getParameter("message");
            if (msg != null && msg.equals("fail")) { %>
        <!-- Frame Modal Bottom -->
        <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
            <div class="modal-dialog modal-frame modal-top" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row d-flex justify-content-center align-items-center">
                            <p class="pt-3 pr-2 text-danger">Username or password incorrect!</p>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%}

        %>

        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header header-sticky">
                    <div class="container-fluid">
                        <div class="menu-wrapper">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.jsp"><img src="assets/img/logo/logo4.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>                                                
                                    <ul id="navigation">  
                                        <li><a style="font-size: 30px" href="home">Home</a></li>
                                        <li><a style="font-size: 30px" href="../User/products.jsp">shop</a></li>
                                        <li><a style="font-size: 30px" href="about.jsp">about</a></li>


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

                                                boolean check = false;

                                                String uId = "";
                                                for (Cookie c : cookies) {
                                                    String cName = c.getName();
                                                    if (cName.equals("uId")) {
                                                        uId = c.getValue();
                                                        check = true;
                                                        break;
                                                    }
                                                    
                                                    if(c.getName().equals("useradmin")) {
                                                        response.sendRedirect("../Admin");
                                                    }
                                                }

                                                if (check) {
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("user")) {

                                                            out.print(" <div class='header-right'><div class='nav-search search-switch'><ul>");
                                                            out.print("<li><a style='color: black' href='confirmation.jsp?uId=" + Integer.parseInt(uId) + "'>" + cookie.getValue() + "</li></a>");

                                                            out.print("<li><a style='color: black;margin-left: 15px' href='../LoginControllers'><i class='fas fa-sign-out-alt'></i></li></a>");
                                                            out.print("<a href='../User/cart.jsp'><span class='flaticon-shopping-cart'></span></a>");
                                                            out.print("</ul></div></div>");
                                                            break;
                                                        } 
                                                    }
                                                } else {
                                                    out.print("<div class='header-right'><div class='nav-search search-switch'><ul>");
                                                    out.print("<a href='../webwatch/login.jsp'><span class='flaticon-user'></span></a>");
                                                    out.print("<a href='../User/cart.jsp'><span class='flaticon-shopping-cart'></span></a>");
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

                        <script>
                                                        $(document).ready(function () {
                                                            $("#frameModalBottom").modal('show');
                                                        });
                        </script>
                        </body>

                        </html>