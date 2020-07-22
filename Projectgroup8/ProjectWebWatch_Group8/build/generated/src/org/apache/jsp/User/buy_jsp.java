package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class buy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .note\n");
      out.write("{\n");
      out.write("    text-align: center;\n");
      out.write("    height: 80px;\n");
      out.write("    background: -webkit-linear-gradient(left, #0072ff, #8811c5);\n");
      out.write("    color: #fff;\n");
      out.write("    font-weight: bold;\n");
      out.write("    line-height: 80px;\n");
      out.write("}\n");
      out.write(".form-content\n");
      out.write("{\n");
      out.write("    padding: 5%;\n");
      out.write("    border: 1px solid #ced4da;\n");
      out.write("    margin-bottom: 2%;\n");
      out.write("}\n");
      out.write(".form-control{\n");
      out.write("    border-radius:1.5rem;\n");
      out.write(" \n");
      out.write("}\n");
      out.write(".btnSubmit\n");
      out.write("{\n");
      out.write("    border:none;\n");
      out.write("    border-radius:1.5rem;\n");
      out.write("    padding: 1%;\n");
      out.write("    width: 20%;\n");
      out.write("    cursor: pointer;\n");
      out.write("    background: #0062cc;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

//            int uId = 0;
//            if (request.getParameter("btnBuy") != null) {
//                Cookie cookie = request.getCookies()[3];
//                uId = Integer.parseInt(cookie.getValue());
//                request.setAttribute("idCookie", uId);
//            }
        
      out.write("\n");
      out.write("        <form action=\"../buyController\" method=\"post\">\n");
      out.write("           <div class=\"container register-form\">\n");
      out.write("            <div class=\"form\">\n");
      out.write("                <div class=\"note\">\n");
      out.write("                    <marquee><p> Welcome</p></marquee> \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"form-content\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                               Recipient's name<input type=\"text\" class=\"form-control\" placeholder=\"name *\"size=\"20\" value=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                Recipient's address<input type=\"text\" class=\"form-control\" placeholder=\"address *\" value=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                Recipient's phone<input type=\"text\" class=\"form-control\" placeholder=\"phone *\" value=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                Note<input type=\"text\" class=\"form-control\" placeholder=\"note *\" value=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"submit\"  name=\"btnBuy\"/>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        </form>\n");
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
