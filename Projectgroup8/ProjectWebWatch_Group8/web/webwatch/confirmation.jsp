<%@page import="java.sql.ResultSet"%>
<%@page import="Models.Entity.Products"%>
<%@page import="Models.Entity.BillDetail"%>
<%@page import="Models.DAO.CtBillDAO"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page import="Models.Entity.Bills"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page import="Models.Entity.User"%>
<%@page import="Models.DAO.UserDAO"%>

<!doctype html>
<html lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Watch shop | eCommers</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

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
                                <a href="index.jsp"><img src="assets/img/logo/logo4.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>                                                
                                    <ul id="navigation">  
                                        <li><a style="font-size: 30px" href="index.jsp">Home</a></li>
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
                                    <h2>Confirmation</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================ confirmation part start =================-->
            <%
                UserDAO udao = new UserDAO();
                int id = Integer.parseInt(request.getParameter("uId"));
                User u = udao.getUser(id);
                BillDAO bDAO = new BillDAO();
                ResultSet rs = bDAO.getuserBill(id);
            %>
            <section class="confirmation_part section_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="confirmation_tittle">
                                <span style="margin: 25rem">Thank you. Your order has been received.</span>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lx-4" style="margin-left: 20rem ">
                            <div class="single_confirmation_details" style="color: black">

                                <span style="color: black">Customer information </span> <span><%out.print("<a  href='../User/updateUser.jsp?uId=" + Integer.parseInt(request.getParameter("uId")) + "'><i class='fas fa-edit' style='font-size:24px; color:red'></i></a>");%></span>

                                <ul>
                                    <li>
                                        <p>Name</p><span>: <%=u.getuName()%></span>
                                    </li>
                                    <li>
                                        <p>Email</p><span>: <%=u.getuEmail()%></span>
                                    </li>
                                    <li>
                                        <p>Gender</p><span>: <%=u.getuGender()%></span>
                                    </li>
                                    <li>
                                        <p>Phone</p><span>: <%=u.getuPhone()%></span>
                                    </li>
                                    <li>
                                        <p>Birthday</p><span>: <%=u.getuBirthday()%></span>
                                    </li>
                                    <li>
                                        <p>Address</p><span>: <%=u.getuAddress()%></span>
                                    </li>

                                </ul>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="order_details_iner">
                                    <h3>Order Details</h3>
                                    <table class="table table-borderless">
                                        <thead>
                                            <tr>
                                                <th scope="col" colspan="2">Recipient's name</th>
                                                <th scope="col">Recipient's phone</th>
                                                <th scope="col">Recipient's address</th>
                                                <th scope="col">Date</th>
                                                <th scope="col">Note</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Product price</th>
                                                <th scope="col">Amount</th>
                                                <th scope="col">Total</th>
                                            </tr>  


                                            <%
                                                while (rs.next()) {
                                                    CtBillDAO ct = new CtBillDAO();

                                                    BillDetail bd = ct.getCtBill(rs.getInt("bId"));
                                                    ResultSet ctbill = ct.getBills(rs.getInt("bId"));
                                                    while (ctbill.next()) {
                                                        ProductsDAO pDAO = new ProductsDAO();
                                                        ResultSet p = pDAO.getInfoProducts(bd.getpId());
                                                        while (p.next()) {


                                            %>






                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th colspan="2"><span><%= rs.getString("bName")%></span></th>
                                                <th><%= rs.getString("bPhone")%></th>
                                                <th><%= rs.getString("bAddress")%></th>
                                                <th><%= rs.getString("bDate")%></th>
                                                <th><%= rs.getString("bNote")%></th>
                                                <th><%= p.getString("pName")%></th>
                                                <th><%= ctbill.getInt("bdAmount")%></th>
                                                <th><%= ctbill.getDouble("bdPrice")%></th>

                                                <th> <span><%= rs.getDouble("bTotal")%></span></th>
                                            </tr>


                                            <%
                                                }
                                            }
                                        }%>
                                    </table></div>
                            </div>
                        </div>
                        </section>
                        <!--================ confirmation part end =================-->
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