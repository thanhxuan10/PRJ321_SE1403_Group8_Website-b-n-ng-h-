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
                                    <a href="index.jsp"><img src="assets/img/logo/logo3.png" alt=""></a>
                                </div>
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav>                                                
                                        <ul id="navigation">  
                                            <li><a href="../webwatch/index.jsp">Home</a></li>
                                            <li><a href="products.jsp.jsp">shop</a></li>
                                            <li><a href="../webwatch/about.jsp">about</a></li>

                                            <li><a href="../webwatch/blog-details.jsp">Blog</a>

                                            </li>

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
                                                            } else if (cookie.getName().equals("useradmin")) {
                                                                response.sendRedirect("../Admin/management.jsp");
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
                        out.print("<h2>Vui long mua hang di</h2>");
                        out.print("<div class='checkout_btn_inner float-right'>");
                        out.print("<a class='btn_1' href='products.jsp'>Continue Shopping</a>");
                        out.print("<a class='btn_1 checkout_btn_1' href='buy.jsp'>Buy</a>");
                        out.print("</div>");
                    } else {
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
                                            out.print("<td>" + p.getpName() + "</td>");
                                            out.print("<td>" + session.getAttribute(id) + "</td>");
                                            out.print("<td>" + p.getpBprices() + "</td>");
                                            out.print("<td><a style='color: black' href='cart.jsp?del=" + p.getpId() + "'>Delete</a></td>");
                                            out.print("</tr>");
                                        } catch (Exception e) {
                                        }
                                    }

                                    out.print("<tr><td colspan='3'>Tong tien</td><td>" + total + "</td></tr>");

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

        </body>
    </body>
</html>
