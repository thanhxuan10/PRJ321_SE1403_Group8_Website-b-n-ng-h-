package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.DAO.CommentDAO;
import java.sql.ResultSet;
import Models.DAO.UserDAO;

public final class comment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background:  lightblue url(\"https://files.123freevectors.com/wp-content/original/119622-abstract-white-background-graphic-design.jpg\")no-repeat fixed center;\n");
      out.write("                background-size: 1400px 800px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navbar navbar-inverse nav\">\n");
      out.write("            <div class=\"navbar-inner\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <a class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".nav-collapse\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </a>\n");
      out.write("                    <a class=\"brand\" href=\"/\">Group 8</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <ul class=\"nav\">\n");
      out.write("                        <li class=\"divider-vertical\"></li>\n");
      out.write("                        <li><a href=\"./management.jsp\"><svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-house-fill\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z\"/>\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z\"/>\n");
      out.write("                                </svg></i> Home</a></li>\n");
      out.write("                        <li><a href=\"./user.jsp\"><svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-file-person-fill\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M2 3a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3zm6 7a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5 2.755C12.146 11.825 10.623 11 8 11s-4.146.826-5 1.755V13a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-.245z\"/>\n");
      out.write("                                </svg></i> User</a></li>\n");
      out.write("                        <li><a href=\"./bill.jsp\"><svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-cash\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z\"/>\n");
      out.write("                                <path d=\"M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z\"/>\n");
      out.write("                                </svg> Bill</a></li>\n");
      out.write("                        <li><a href=\"./comment.jsp\"><svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-cash\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z\"/>\n");
      out.write("                                <path d=\"M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z\"/>\n");
      out.write("                                </svg> Comment</a></li>\n");
      out.write("                        <li><a href=\"./top10.jsp\"><svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-cash\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                                <path fill-rule=\"evenodd\" d=\"M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z\"/>\n");
      out.write("                                <path d=\"M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z\"/>\n");
      out.write("                                </svg> Revenue</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                     <div class=\"pull-right\">\n");
      out.write("                        <ul class=\"nav pull-right\">\n");
      out.write("                             ");

                                String user = "";
                                try {
                                    Cookie[] cookies = request.getCookies();
                                    if (cookies.length <= 1) {
                                        response.sendRedirect("../Admin");
                                    } else {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("useradmin")) {
                                                out.print( "<li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Welcome,"+cookie.getValue()+"<b class='caret'></b></a>" );
                                            }else{
                                                response.sendRedirect("../Admin");
                                            }
                                        }
                                    }

                                    //                out.print("Username: " + user);
                                } catch (Exception ex) {
                                    response.sendRedirect("../Admin");
                                }

                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                <ul class=\"dropdown-menu\">\n");
      out.write("                                   <li><a href=\"../LogoutController\"><i class=\"icon-off\"></i> Logout</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h4><marquee>Managament Comment by Admin</marquee></h4>\n");
      out.write("                    <div class=\"table-responsive\">\n");
      out.write("                        <table id=\"mytable\" class=\"table table-bordred table-striped\">\n");
      out.write("\n");
      out.write("                            <thead>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>ID</th>\n");
      out.write("                                    <th>UserID</th>\n");
      out.write("                                    <th>ProductID</th>\n");
      out.write("                                    <th>Comment</th>\n");
      out.write("                                    <th>Date</th>\n");
      out.write("                                   \n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                    CommentDAO cdao = new CommentDAO();
                                    ResultSet rs = cdao.getAllComment();
                                    while (rs.next()) {
                                        out.print("<tr>");
                                        out.print("<td>" + rs.getInt("cmId") + "</td>");
                                        out.print("<td>" + rs.getInt("uId") + "</td>");
                                        out.print("<td>" + rs.getInt("pId") + "</td>");
                                        out.print("<td>" + rs.getString("cmContent") + "</td>");
                                        out.print("<td>" + rs.getDate("cmDate") + "</td>");
                                       
                                        out.print("</tr>");
                                    }
                                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                                
      out.write("\n");
      out.write("                                <!--<img src=\"./Img/1.png\" width=\"200px\" alt=\"imgeas\"/>-->\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                    <ul class=\"pagination pull-right\">\n");
      out.write("                        <li class=\"disabled\"><a href=\"#\"><span class=\"glyphicon glyphicon-chevron-left\"></span></a></li>\n");
      out.write("                        <li class=\"active\"><a href=\"#\">1</a></li>\n");
      out.write("                        <li><a href=\"#\">2</a></li>\n");
      out.write("                        <li><a href=\"#\">3</a></li>\n");
      out.write("                        <li><a href=\"#\">4</a></li>\n");
      out.write("                        <li><a href=\"#\">5</a></li>\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-chevron-right\"></span></a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"modal fade\" id=\"edit\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"edit\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></button>\n");
      out.write("                    <h4 class=\"modal-title custom_align\" id=\"Heading\">Edit Your Detail</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input class=\"form-control \" type=\"text\" placeholder=\"Mohsin\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                        <input class=\"form-control \" type=\"text\" placeholder=\"Irshad\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <textarea rows=\"2\" class=\"form-control\" placeholder=\"CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan\"></textarea>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer \">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-warning btn-lg\" style=\"width: 100%;\"><span class=\"glyphicon glyphicon-ok-sign\"></span> Update</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.modal-content --> \n");
      out.write("        </div>\n");
      out.write("        <!-- /.modal-dialog --> \n");
      out.write("    </div>\n");
      out.write("    <div class=\"modal fade\" id=\"delete\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"edit\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></button>\n");
      out.write("                    <h4 class=\"modal-title custom_align\" id=\"Heading\">Delete this entry</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                    <div class=\"alert alert-danger\"><span class=\"glyphicon glyphicon-warning-sign\"></span> Are you sure you want to delete this Record?</div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer \">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-success\" ><span class=\"glyphicon glyphicon-ok-sign\"></span> Yes</button>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><span class=\"glyphicon glyphicon-remove\"></span> No</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.modal-content --> \n");
      out.write("        </div>\n");
      out.write("        <!-- /.modal-dialog --> \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
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
