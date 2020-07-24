package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Models.DAO.ProductsDAO;

public final class products_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_sql_dataSource_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_sql_dataSource_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_out_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
    _jspx_tagPool_sql_query_var_sql_dataSource_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Watch shop | eCommers</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"manifest\" href=\"site.webmanifest\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.ico\">\n");
      out.write("\n");
      out.write("        <!-- CSS here -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/flaticon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slicknav.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/fontawesome-all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slick.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\">\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap\">\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Material Design Bootstrap -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css\" rel=\"stylesheet\">\n");
      out.write("        <style>\n");
      out.write("            .active-pink input.form-control[type=text] {\n");
      out.write("                border-bottom: 1px solid #f48fb1;\n");
      out.write("                box-shadow: 0 1px 0 0 #f48fb1;\n");
      out.write("                margin-right: 40px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--? Preloader Start -->\n");
      out.write("        <div id=\"preloader-active\">\n");
      out.write("            <div class=\"preloader d-flex align-items-center justify-content-center\">\n");
      out.write("                <div class=\"preloader-inner position-relative\">\n");
      out.write("                    <div class=\"preloader-circle\"></div>\n");
      out.write("                    <div class=\"preloader-img pere-text\">\n");
      out.write("                        <!--                    <img src=\"assets/img/logo/logo.png\" alt=\"\">-->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Preloader Start -->\n");
      out.write("        <header>\n");
      out.write("            <!-- Header Start -->\n");
      out.write("            <div class=\"header-area\">\n");
      out.write("                <div class=\"main-header header-sticky\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"menu-wrapper\">\n");
      out.write("                            <!-- Logo -->\n");
      out.write("                            <div class=\"logo\">\n");
      out.write("                                <a href=\"index.jsp\"><img src=\"assets/img/logo/logo4.png\" alt=\"\"></a>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Main-menu -->\n");
      out.write("                            <div class=\"main-menu d-none d-lg-block\">\n");
      out.write("                                <nav>                                                \n");
      out.write("                                    <ul id=\"navigation\">  \n");
      out.write("                                        <li><a style=\"font-size: 30px\" href=\"../webwatch/index.jsp\">Home</a></li>\n");
      out.write("                                        <li><a style=\"font-size: 30px\" href=\"products.jsp\">shop</a></li>\n");
      out.write("                                        <li><a  style=\"font-size: 30px\" href=\"../webwatch/about.jsp\">about</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"header-right\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <div class=\"nav-search search-switch\">\n");
      out.write("                                            ");

                                                Cookie[] cookies = request.getCookies();
                                                boolean check = false;
                                                if (cookies.length > 1) {
                                                    String uId = "";
                                                    for (Cookie c : cookies) {
                                                        String cName = c.getName();
                                                        if (cName.equals("uId")) {
                                                            uId = c.getValue();
                                                        }
                                                    }
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("user")) {
                                                            check = true;

                                                        } else if (cookie.getName().equals("useradmin")) {
                                                            check = true;
                                                        }
                                                    }
                                                } else {
                                                    out.print("<div class='header-right'><div class='nav-search search-switch'><ul>");
                                                    out.print("<a href='../webwatch/login.jsp'><span class='flaticon-user'></span></a>");
                                                    out.print("<a href='cart.jsp'><span class='flaticon-shopping-cart'></span></a>");
                                                    out.print("</ul></div></div>");
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
                                            
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Mobile Menu -->\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"mobile_menu d-block d-lg-none\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>                       \n");
      out.write("        <!-- Header End -->\n");
      out.write("    </header>\n");
      out.write("    <div class=\"slider-area \">\n");
      out.write("        <div class=\"single-slider slider-height2 d-flex align-items-center\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-12\">\n");
      out.write("                        <div class=\"hero-cap text-center\">\n");
      out.write("                            <h2>Watch Shop</h2>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <form style=\"float:right\" class=\"form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 mt-2\">\n");
      out.write("        <i class=\"fas fa-search\" aria-hidden=\"true\"></i>\n");
      out.write("        <input name=\"txtSearch\" class=\"form-control form-control-sm ml-2 w-55\" type=\"text\" placeholder=\"Search\"\n");
      out.write("               aria-label=\"Search\">\n");
      out.write("    </form>\n");
      out.write("    <main>\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        <section class=\"popular-items latest-padding\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <!-- Nav Card -->\n");
      out.write("                <div class=\"tab-content\" id=\"nav-tabContent\">\n");
      out.write("                    <!-- card one -->\n");
      out.write("                    <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </main>\n");
      out.write("    <footer>\n");
      out.write("        <!-- Footer Start-->\n");
      out.write("        <div class=\"footer-area footer-padding\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row d-flex justify-content-between\">\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-50 col-sm-12\">\n");
      out.write("                        <div class=\"single-footer-caption mb-50\">\n");
      out.write("                            <div class=\"single-footer-caption mb-50\">\n");
      out.write("                                <!-- logo -->\n");
      out.write("                                <div class=\"footer-logo\">\n");
      out.write("                                    <a href=\"index.html\"><img src=\"assets/img/logo/logo4.png\" alt=\"\"></a> \n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"footer-tittle\">\n");
      out.write("                                    <div class=\"footer-pera\">\n");
      out.write("                                        <p>Asorem ipsum adipolor sdit amet, consectetur adipisicing elitcf sed do eiusmod tem.</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Footer bottom -->\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <div class=\"col-xl-7 col-lg-8 col-md-7\">\n");
      out.write("                        <div class=\"footer-copy-right\">\n");
      out.write("                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Be made with <i class=\"fa fa-heart\" aria-hidden=\"true\"></i> by <a href=\"https://www.facebook.com/moon.xuan.5\" target=\"_blank\">Group 8</a>\n");
      out.write("                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                  \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-5 col-lg-4 col-md-5\">\n");
      out.write("                        <div class=\"footer-copy-right f-right\">\n");
      out.write("                            <!-- social -->\n");
      out.write("                            <div class=\"footer-social\">\n");
      out.write("                                <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fab fa-behance\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fas fa-globe\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- Latest Products End -->\n");
      out.write("    <!--? Shop Method Start-->\n");
      out.write("\n");
      out.write("    <!-- Footer End-->\n");
      out.write("\n");
      out.write("    <!--? Search model Begin -->\n");
      out.write("    <!--    <div class=\"search-model-box\">\n");
      out.write("            <div class=\"h-100 d-flex align-items-center justify-content-center\">\n");
      out.write("                <div class=\"search-close-btn\">+</div>\n");
      out.write("                <form class=\"search-model-form\">\n");
      out.write("                    <input type=\"text\" id=\"search-input\" placeholder=\"Searching key.....\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>-->\n");
      out.write("    <!-- Search model end -->\n");
      out.write("\n");
      out.write("    <!-- JS here -->\n");
      out.write("    <!-- All JS Custom Plugins Link Here here -->\n");
      out.write("    <script src=\"./assets/js/vendor/modernizr-3.5.0.min.js\"></script>\n");
      out.write("    <!-- Jquery, Popper, Bootstrap -->\n");
      out.write("    <script src=\"./assets/js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/popper.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- Jquery Mobile Menu -->\n");
      out.write("    <script src=\"./assets/js/jquery.slicknav.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Jquery Slick , Owl-Carousel Plugins -->\n");
      out.write("    <script src=\"./assets/js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/slick.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- One Page, Animated-HeadLin -->\n");
      out.write("    <script src=\"./assets/js/wow.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/animated.headline.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.magnific-popup.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Scroll up, nice-select, sticky -->\n");
      out.write("    <script src=\"./assets/js/jquery.scrollUp.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.nice-select.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.sticky.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- contact js -->\n");
      out.write("    <script src=\"./assets/js/contact.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.form.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.validate.min.js\"></script>\n");
      out.write("    <script src=\"./assets/js/mail-script.js\"></script>\n");
      out.write("    <script src=\"./assets/js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Jquery Plugins, main Jquery -->\t\n");
      out.write("    <script src=\"./assets/js/plugins.js\"></script>\n");
      out.write("    <script src=\"./assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- JQuery -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("    <!-- Bootstrap tooltips -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js\"></script>\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- MDB core JavaScript -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("conn");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost/group8");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setPassword("");
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${!empty param.txtSearch}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_sql_query_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("\n");
        out.write("\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_sql_query_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_sql_dataSource_nobody.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_sql_query_0.setVar("product");
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${conn}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setSql((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("SELECT * FROM product WHERE pName LIKE '%${param.txtSearch}%'", java.lang.String.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_sql_dataSource_nobody.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty param.txtSearch}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_sql_query_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_sql_query_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_1.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_1);
    _jspx_th_sql_query_1.setVar("product");
    _jspx_th_sql_query_1.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${conn}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_sql_query_1 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_1 = _jspx_th_sql_query_1.doStartTag();
      if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_1[0]++;
          _jspx_th_sql_query_1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_1.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                Select * from product where pAmount>0 and pStatus=0\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_sql_query_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_1[0]--;
      }
      if (_jspx_th_sql_query_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_1.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("row");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${product.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("                                <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-3\">\n");
          out.write("                                    <div class=\"single-popular-items mb-50 text-center\" width=\"60px\" height=\"60px\">\n");
          out.write("                                        <div class=\"popular-img\".. >\n");
          out.write("                                            <div style=\"width: 15rem; height: 18rem\">\n");
          out.write("                                                <img src=\"../");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.pImage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\" width=\"100%\" height=\"100%\">\n");
          out.write("                                            </div>\n");
          out.write("                                            <!--<img src=\"../img/Advance1.jpg\" alt=\"\">-->\n");
          out.write("                                            <div class=\"img-cap\" >\n");
          out.write("                                                <a href=\"product_details.jsp?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.pId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><span>See details</span></a>\n");
          out.write("                                            </div>\n");
          out.write("                                            <div class=\"favorit-items\">\n");
          out.write("                                                <span class=\"flaticon-heart\"></span>\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("                                        <div class=\"popular-caption\" style=\"width: 15rem; height: 6rem\">\n");
          out.write("                                            <h3>");
          if (_jspx_meth_c_out_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</h3>\n");
          out.write("\n");
          out.write("                                        </div>\n");
          out.write("                                        <div class=\"popular-caption\">\n");
          out.write("\n");
          out.write("                                            <span>");
          if (_jspx_meth_c_out_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</span>\n");
          out.write("                                        </div>\n");
          out.write("                                    </div>\n");
          out.write("                                </div>\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_out_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.pName}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }

  private boolean _jspx_meth_c_out_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_1 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_1.setPageContext(_jspx_page_context);
    _jspx_th_c_out_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.pBprices}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_1 = _jspx_th_c_out_1.doStartTag();
    if (_jspx_th_c_out_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
    return false;
  }
}
