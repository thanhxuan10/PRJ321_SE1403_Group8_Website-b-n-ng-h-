<%@page import="Models.Entity.User"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Models.Entity.Comment"%>
<%@page import="Models.DAO.CommentDAO"%>
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
        
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

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
                                <a href="index.jsp"><img src="assets/img/logo/logo4.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>                                                
                                    <ul id="navigation">  
                                        <li><a style="font-size: 30px" href="../webwatch/index.jsp">Home</a></li>
                                        <li><a style="font-size: 30px" href="products.jsp">shop</a></li>
                                        <li><a style="font-size: 30px" href="../webwatch/about.jsp">about</a></li>

                                       
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
                                                            response.sendRedirect("../Admin/management.jsp");
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
            <div class="comments-area">
                <h4>Comments</h4>
                



                            <%
                                CommentDAO cDAO = new CommentDAO();
                                ResultSet rs = cDAO.getAllComment();

                                while (rs.next()) {
                                    int uId = rs.getInt("uId");
                                    UserDAO uDAO = new UserDAO();
                                    User u = uDAO.getUser(uId);
                                    out.print("<div class='comments-area'><div class='comment-list'><div class='single-comment justify-content-between d-flex'><div class='user justify-content-between d-flex'><div class='thumb'>");
                                    out.print("<i class='fas fa-user' style='font-size:55px;color:black'></i>");
                                    out.print("</div>");
                                    out.print("<div class='desc'>");
                                    out.print("<p class='comment'>");
                                    out.print(u.getuName());
                                    out.print("<div class='d-flex justify-content-between'>");
                                    out.print("<div class='d-flex align-items-center'><h5>");
                                    out.print(rs.getString("cmContent"));
                                    out.print("</h5>");
                                    out.print("<p class='date'>");
                                    out.print(rs.getDate("cmDate"));
                                    out.print("</p></div></div></p></div></div></div></div></div></div></div>");
                                }

                            %>




                        
                    
    </div>

    <div class="comment-form">
        <h4>Leave a Reply</h4>
        <form class="form-contact comment_form" action="../CommentController?pId=${param.id}"  method="post">
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                  placeholder="Write Comment"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="button button-contactForm btn_1 boxed-btn">

                        Send Message</button>
                </div>
        </form>
    </div>
</div>


<!--================End Single Product Area =================-->
<!-- subscribe part here -->

<!-- subscribe part end -->
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