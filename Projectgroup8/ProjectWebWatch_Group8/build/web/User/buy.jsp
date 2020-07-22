<%-- 
    Document   : buy
    Created on : Jul 7, 2020, 1:56:50 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <style>
            .note
{
    text-align: center;
    height: 80px;
    background: -webkit-linear-gradient(left, #0072ff, #8811c5);
    color: #fff;
    font-weight: bold;
    line-height: 80px;
}
.form-content
{
    padding: 5%;
    border: 1px solid #ced4da;
    margin-bottom: 2%;
}
.form-control{
    border-radius:1.5rem;
 
}
.btnSubmit
{
    border:none;
    border-radius:1.5rem;
    padding: 1%;
    width: 20%;
    cursor: pointer;
    background: #0062cc;
    color: #fff;
}
        </style>
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
                                                        }else if(cookie.getName().equals("useradmin")){
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
        <form action="../buyController" method="post">
           <div class="container register-form">
            <div class="form">
                <div class="note" >
                    <marquee><p style="color: white"> Enter infomation to buy</p></marquee> 
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                               Recipient's name<input type="text" class="form-control" placeholder="name *"size="20" value=""/>
                            </div>
                            <div class="form-group">
                                Recipient's address<input type="text" class="form-control" placeholder="address *" value=""/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                Recipient's phone<input type="text" class="form-control" placeholder="phone *" value=""/>
                            </div>
                            <div class="form-group">
                                Note<input type="text" class="form-control" placeholder="note *" value=""/>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btnSubmit"  name="btnBuy">BUY</button>
                </div>
            </div>
        </div>
            
        </form>
    </body>
</html>
