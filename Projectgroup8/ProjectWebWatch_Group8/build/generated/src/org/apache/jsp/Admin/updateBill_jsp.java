package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Date;
import Models.Entity.Bills;
import Models.DAO.BillDAO;

public final class updateBill_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <!------ Include the above in your HEAD tag ---------->\n");
      out.write("        \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .insert{\n");
      out.write("                background: -webkit-linear-gradient(left, #3931af, #00c6ff);\n");
      out.write("                margin-top: 3%;\n");
      out.write("                padding: 3%;\n");
      out.write("            }\n");
      out.write("            .insert-left{\n");
      out.write("                text-align: center;\n");
      out.write("                color: #fff;\n");
      out.write("                margin-top: 4%;\n");
      out.write("            }\n");
      out.write("            .insert-left input{\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 1.5rem;\n");
      out.write("                padding: 2%;\n");
      out.write("                width: 60%;\n");
      out.write("                background: #f8f9fa;\n");
      out.write("                font-weight: bold;\n");
      out.write("                color: #383d41;\n");
      out.write("                margin-top: 30%;\n");
      out.write("                margin-bottom: 3%;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .insert-right{\n");
      out.write("                background: #f8f9fa;\n");
      out.write("                border-top-left-radius: 10% 50%;\n");
      out.write("                border-bottom-left-radius: 10% 50%;\n");
      out.write("            }\n");
      out.write("            .insert-left img{\n");
      out.write("                margin-top: 15%;\n");
      out.write("                m;argin-bottom: 5%;\n");
      out.write("                width: 25%;\n");
      out.write("                -webkit-animation: mover 2s infinite  alternate;\n");
      out.write("                animation: mover 1s infinite  alternate;\n");
      out.write("            }\n");
      out.write("            @-webkit-keyframes mover {\n");
      out.write("                0% { transform: translateY(0); }\n");
      out.write("                100% { transform: translateY(-20px); }\n");
      out.write("            }\n");
      out.write("            @keyframes mover {\n");
      out.write("                0% { transform: translateY(0); }\n");
      out.write("                100% { transform: translateY(-20px); }\n");
      out.write("            }\n");
      out.write("            .insert-left p{\n");
      out.write("                font-weight: lighter;\n");
      out.write("                padding: 12%;\n");
      out.write("                margin-top: -9%;\n");
      out.write("            }\n");
      out.write("            .insert .insert-form{\n");
      out.write("                padding: 10%;\n");
      out.write("                margin-top: 10%;\n");
      out.write("            }\n");
      out.write("            .btnUpdate{\n");
      out.write("                float: right;\n");
      out.write("                margin-top: 10%;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 1.5rem;\n");
      out.write("                padding: 2%;\n");
      out.write("                background: #0062cc;\n");
      out.write("                color: #fff;\n");
      out.write("                font-weight: 600;\n");
      out.write("                width: 50%;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .insert .nav-tabs{\n");
      out.write("                margin-top: 3%;\n");
      out.write("                border: none;\n");
      out.write("                background: #0062cc;\n");
      out.write("                border-radius: 1.5rem;\n");
      out.write("                width: 28%;\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("            .insert .nav-tabs .nav-link{\n");
      out.write("                padding: 2%;\n");
      out.write("                height: 34px;\n");
      out.write("                font-weight: 600;\n");
      out.write("                color: #fff;\n");
      out.write("                border-top-right-radius: 1.5rem;\n");
      out.write("                border-bottom-right-radius: 1.5rem;\n");
      out.write("            }\n");
      out.write("            .insert .nav-tabs .nav-link:hover{\n");
      out.write("                border: none;\n");
      out.write("            }\n");
      out.write("            .insert .nav-tabs .nav-link.active{\n");
      out.write("                width: 100px;\n");
      out.write("                color: #0062cc;\n");
      out.write("                border: 2px solid #0062cc;\n");
      out.write("                border-top-left-radius: 1.5rem;\n");
      out.write("                border-bottom-left-radius: 1.5rem;\n");
      out.write("            }\n");
      out.write("            .insert-heading{\n");
      out.write("                text-align: center;\n");
      out.write("                margin-top: 8%;\n");
      out.write("                margin-bottom: -15%;\n");
      out.write("                color: #495057;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            int bId = 0;
            int uId = 0;
            String bName = "";
            String bNote = "";
            String bStatus = "";
            String bPhone = "";
            String bAddress = "";
            double bTotal = 0;
            String bDate = "";

            if (request.getParameter("bId") != null) {
                bId = Integer.parseInt(request.getParameter("bId"));
                BillDAO bDAO = new BillDAO();
                Bills b = bDAO.getBill(bId);
                bName = b.getbName();
                bNote = b.getbNote();
                bStatus = b.getbStatus();
                bPhone = b.getbPhone();
                bAddress = b.getbAddress();
                bDate = b.getbDate().toString();
                bTotal = b.getbTotal();
            }

        
      out.write("\n");
      out.write("        <form action=\"../billController\" method=\"post\">\n");
      out.write("            <div class=\"container insert\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 insert-left\">\n");
      out.write("                        <img src=\"https://image.ibb.co/n7oTvU/logo_white.png\" alt=\"\"/>\n");
      out.write("                        <h3>Welcome</h3>\n");
      out.write("                        <p>Admin go to update bill new</p>\n");
      out.write("<!--                        <input type=\"submit\" name=\"\" value=\"Exit\"/><br/>-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-9 insert-right\">\n");
      out.write("                        <div class=\"tab-content\" id=\"myTabContent\">\n");
      out.write("                            <div class=\"tab-pane fade show active\" id=\"home\" role=\"tabpanel\" aria-labelledby=\"home-tab\">\n");
      out.write("                                <h3 class=\"insert-heading\">Update bill</h3>\n");
      out.write("                                <div class=\"row insert-form\">\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" placeholder=\"User id *\" value=\"");
      out.print( uId);
      out.write("\" name=\"uId\" id=\"uId\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" placeholder=\"Bill status*\" value=\"");
      out.print( bStatus);
      out.write("\" name=\"bStatus\" id=\"bStatus\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" placeholder=\"Bill note *\" value=\"");
      out.print( bNote);
      out.write("\" name=\"bNote\" id=\"bNote\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\"  placeholder=\"Bill address *\" value=\"");
      out.print( bAddress);
      out.write("\"  name=\"bAddress\" id=\"bAddress\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" placeholder=\"Bill name *\" value=\"");
      out.print( bName);
      out.write("\"  name=\"bName\" id=\"bName\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\"  class=\"form-control\" placeholder=\"Bill phone  *\" value=\"");
      out.print( bPhone);
      out.write("\" name=\"bPhone\" id=\"bPhone\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\"  class=\"form-control\" placeholder=\"Bill total  *\" value=\"");
      out.print( bTotal);
      out.write("\" name=\"bTotal\" id=\"bTotal\"/>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"date\" class=\"form-control\" placeholder=\"Bill date *\" value=\"");
      out.print( bDate);
      out.write("\" name=\"bDate\" id=\"bDate\" />\n");
      out.write("                                        </div>  \n");
      out.write("                                        \n");
      out.write("                                           <input type=\"submit\" class=\"btnUpdate\" name=\"btnBill\"  value=\"Update\"/>\n");
      out.write("                                           \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                           <input type=\"reset\" name=\"btnReset\" id=\"btnReset\" class=\"btnUpdate\" value=\"Reset\"/>\n");
      out.write("                                       \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
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
