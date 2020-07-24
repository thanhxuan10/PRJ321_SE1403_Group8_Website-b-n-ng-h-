/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.UserDAO;
import Models.Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "ChangePassController", urlPatterns = {"/ChangePassController"})
public class ChangePassController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePassController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ham xu li doi mat khau nguoi dung
        PrintWriter out = response.getWriter();
        try {
            User u = new User();
            UserDAO uDAO = new UserDAO();
            String uId = "";
            Cookie[] cookie = request.getCookies();
            for (Cookie c : cookie) {
                String cName = c.getName();
                if (cName.equals("uId")) {
                    uId = c.getValue();
                }
            }
            
            String opass =request.getParameter("opass");
            if(uDAO.searchPass(opass)==Integer.parseInt(uId)){
                String npass = request.getParameter("npass");
                String apass = request.getParameter("apass");
                if(npass.equals(apass)){
                    u.setuPass(request.getParameter("npass"));
                    uDAO.updatePass(u, Integer.parseInt(uId));
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Change password is susscess');");
                    out.println("location='./User/updateUser.jsp?uId="+Integer.parseInt(uId));
                    out.println("</script>");
                }else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Change password is not susscess');");
                    out.println("location='./User/changePass.jsp'");
                    out.println("</script>");
                }
            }
            else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Change password is not susscess');");
                    out.println("location='./User/changePass.jsp'");
                    out.println("</script>");
                }
                } catch (SQLException ex) {
            Logger.getLogger(ChangePassController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
