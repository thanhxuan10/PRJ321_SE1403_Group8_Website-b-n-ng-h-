/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.BillDAO;
import Models.Entity.Bills;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "billController", urlPatterns = {"/billController"})
public class BillController extends HttpServlet {

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
            out.println("<title>Servlet billController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet billController at " + request.getContextPath() + "</h1>");
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
        // xu li cac chuc nang them sua bill
         try {
            Bills b = new Bills();
        
            b.setbStatus(Integer.parseInt(request.getParameter("bStatus")));
            b.setbNote(request.getParameter("bNote"));
            b.setbAddress(request.getParameter("bAddress"));
            b.setbName(request.getParameter("bName"));
            b.setbPhone(request.getParameter("bPhone"));
            Date bDate = Date.valueOf(request.getParameter("bDate"));
            b.setbDate(bDate);
            BillDAO bDAO = new BillDAO();
            if (request.getParameter("btnBill") != null) {
                int bId = Integer.parseInt(request.getParameter("bId"));
                b.setbId(bId);
                bDAO.updateBill(b);
            } 
        } catch (SQLException ex) {
            Logger.getLogger(AdminControllers.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("./Admin/bill.jsp");
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
