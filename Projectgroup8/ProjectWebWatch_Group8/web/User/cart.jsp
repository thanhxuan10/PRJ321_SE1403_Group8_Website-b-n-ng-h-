<%-- 
    Document   : cart
    Created on : Jul 6, 2020, 3:28:00 PM
    Author     : HP
--%>

<%@page import="Models.Entity.Products"%>
<%@page import="java.util.Enumeration"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html class="no-js" lang="zxx">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="x-ua-compatible" content="ie=edge">
            <title>Watch shop </title>


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
            <%
                if (request.getParameter("del") != null) {
                    request.getSession().removeAttribute(request.getParameter("del"));
                }
            %>
            <!-- Preloader Start -->
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
                                            <li><a style="font-size: 30px" href="../webwatch/home">Home</a></li>
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
                <!-- Header End -->
            </header>
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Cart</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="cart_area section_padding">
                <%
                    ProductsDAO pDao = new ProductsDAO();
                    // khoi tao total de luu tong tien
                    double total = 0;
                    // lấy tất cả các tên của đối tượng ở trong session
                    Enumeration<String> pName = session.getAttributeNames();
                    if (!pName.hasMoreElements()) {
                        out.print("<h2 style='text-align: center'>You don't have any products in cart.</h2>");
                        
%>
                    <div style="margin-left: 35rem">
                                <a class="btn_1" href="products.jsp">Continue Shopping</a>
                               
                            </div>
                <%} else {
                %>
                <div class="container">
                    <div class="cart_inner">
                        <div class="table-responsive">

                            <table  class="table">
                                <tr>
                                    <th></th>
                                    <th>Ten san pham</th>
                                    <th>So luong</th>
                                    <th>Don gia</th>
                                    <th></th>
                                </tr>

                                <%
                                    // vòng lặp đi qua tất cả các đối tượng
                                    while (pName.hasMoreElements()) {
                                        // lấy id của sản phẩm 
                                        try {
                                            String id = pName.nextElement().toString();
                                            //                    // lấy sản phẩm từ csdl bằng id
                                            Products p = pDao.getProducts(Integer.parseInt(id));
                                            // tính tổng tiền
                                            total += p.getpBprices() * Integer.parseInt(session.getAttribute(id).toString()) - p.getpBprices() * p.getpDiscount();
                                            request.setAttribute("total", total);
                                            out.print("<tr>");

                                            out.print("<td><div class='media'><div class='d-flex'><img src='../" + p.getpImage() + "'/></div></div></td>");
                                            out.print("<td style='color: black'>" + p.getpName() + "</td>");
                                            out.print("<td style='color: black'>" + session.getAttribute(id) + "</td>");
                                            out.print("<td style='color: black'>" + p.getpBprices() + "</td>");
                                            out.print("<td><a style='color: black' href='cart.jsp?del=" + p.getpId() + "'>Delete</a></td>");
                                            out.print("</tr>");
                                        } catch (Exception e) {
                                        }
                                        }
                                    out.print("<tr><td colspan='3' style='color: black'>Tong tien</td><td style='color: black'>" + total + "</td></tr>");
                                    

                                    

                                %>
                            </table>
                            <div class="checkout_btn_inner float-right">
                                <a class="btn_1" href="products.jsp">Continue Shopping</a>
                                <a class="btn_1 checkout_btn_1" href="buy.jsp">Buy</a>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </section>
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
        </body>
        
    
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
</html>
