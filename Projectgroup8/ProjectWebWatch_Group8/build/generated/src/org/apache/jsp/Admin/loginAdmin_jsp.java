package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("      <!--Made with love by Mutiullah Samim -->\n");
      out.write("   \n");
      out.write("\t\t<!--Bootsrap 4 CDN-->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("    \n");
      out.write("<!--    Fontawesome CDN\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">-->\n");
      out.write("\n");
      out.write("\t<!--Custom styles-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\n");
      out.write("\t<!--Custom styles-->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("         /* Made with love by Mutiullah Samim*/\n");
      out.write("\n");
      out.write("@import url('https://fonts.googleapis.com/css?family=Numans');\n");
      out.write("\n");
      out.write("html,body{\n");
      out.write("background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');\n");
      out.write("background-size: cover;\n");
      out.write("background-repeat: no-repeat;\n");
      out.write("height: 100%;\n");
      out.write("font-family: 'Numans', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container{\n");
      out.write("height: 100%;\n");
      out.write("align-content: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card{\n");
      out.write("height: 370px;\n");
      out.write("margin-top: auto;\n");
      out.write("margin-bottom: auto;\n");
      out.write("width: 400px;\n");
      out.write("background-color: rgba(0,0,0,0.5) !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".social_icon span{\n");
      out.write("font-size: 60px;\n");
      out.write("margin-left: 10px;\n");
      out.write("color: #FFC312;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".social_icon span:hover{\n");
      out.write("color: white;\n");
      out.write("cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-header h3{\n");
      out.write("color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".social_icon{\n");
      out.write("position: absolute;\n");
      out.write("right: 20px;\n");
      out.write("top: -45px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input-group-prepend span{\n");
      out.write("width: 40px;\n");
      out.write("background-color: #FFC312;\n");
      out.write("color: black;\n");
      out.write("border:0 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input:focus{\n");
      out.write("outline: 0 0 0 0  !important;\n");
      out.write("box-shadow: 0 0 0 0 !important;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(".remember{\n");
      out.write("color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".remember input\n");
      out.write("{\n");
      out.write("width: 20px;\n");
      out.write("height: 20px;\n");
      out.write("margin-left: 15px;\n");
      out.write("margin-right: 5px;\n");
      out.write("}\n");
      out.write(".input-group form-group{\n");
      out.write("    color:white;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login_btn{\n");
      out.write("color: black;\n");
      out.write("background-color: #FFC312;\n");
      out.write("width: 170px;\n");
      out.write("/*margin-left:15px;*/\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login_btn:hover{\n");
      out.write("color: black;\n");
      out.write("background-color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".links{\n");
      out.write("color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".links a{\n");
      out.write("margin-left: 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn float-center login_btn{\n");
      out.write("    margin-left: 100px;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write(".card-footer{\n");
      out.write("    margin-bottom:  100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         ");

                                try {
                                    Cookie[] cookies = request.getCookies();
                                    if (cookies.length >1) {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("useradmin")) {
                                                response.sendRedirect("./Admin/management.jsp");
                                            }else if(cookie.getName().equals("user")){
                                                response.sendRedirect("../webwatch/home");
                                            }
                                        }
                                    } 
                                    //                out.print("Username: " + user);
                                } catch (Exception ex) {
                                   
                                }

                            
      out.write("\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("\t<div class=\"d-flex justify-content-center h-100\">\n");
      out.write("\t\t<div class=\"card\">\n");
      out.write("\t\t\t<div class=\"card-header\">\n");
      out.write("\t\t\t\t<h3>Sign In</h3>\n");
      out.write("\t\t\t\t<div class=\"d-flex justify-content-end social_icon\">\n");
      out.write("\t\t\t\t\t<span><i class=\"fab fa-facebook-square\"></i></span>\n");
      out.write("\t\t\t\t\t<span><i class=\"fab fa-google-plus-square\"></i></span>\n");
      out.write("\t\t\t\t\t<span><i class=\"fab fa-twitter-square\"></i></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"card-body\">\n");
      out.write("\t\t\t\t<form action=\"./LoginControllers\" method=\"post\">\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("\t\t\t\t\t<div class=\"input-group form-group\">\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group-prepend\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"input-group-text\"><i class=\"material-icons\">account_circle</i></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                \t<input type=\"text\" class=\"form-control\" placeholder=\"username\" name=\"txtUser\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"input-group form-group\">\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group-prepend\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"input-group-text\"><i class=\"material-icons\">build</i></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                \t<input type=\"password\" class=\"form-control\" placeholder=\"password\" name=\"txtPass\">\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!--<div class=\"row align-items-center remember\">-->\n");
      out.write("\t\t\t\t\t<!--\t<input type=\"checkbox\">Remember Me-->\n");
      out.write("\t\t\t\t\t<!--</div>-->\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("                                                \n");
      out.write("                                            <input type=\"submit\"  name=\"Login_admin\" value=\"Login admin\" class=\"btn float-center login_btn\" style=\"width: 100%\"/>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
}
