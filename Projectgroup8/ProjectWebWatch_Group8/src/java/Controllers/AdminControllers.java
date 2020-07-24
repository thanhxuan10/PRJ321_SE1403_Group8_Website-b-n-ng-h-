/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.ProductsDAO;
import Models.Entity.Products;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author HP
 */
@WebServlet(name = "Admin", urlPatterns = {"/Admin"})
@MultipartConfig
public class AdminControllers extends HttpServlet {

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
        RequestDispatcher dispatcher = request.getRequestDispatcher("./Admin/loginAdmin.jsp");// set cho project chay thang vao dssp.jsp
        dispatcher.forward(request, response);
        
        
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
        // xu li cac chuc nang them sua san pham
        Products p = new Products();

        p.setpName(request.getParameter("pName"));
        p.setpBprices(Double.parseDouble(request.getParameter("pBprices")));
        p.setpAmount(Integer.parseInt(request.getParameter("pAmount")));
        p.setpIprices(Double.parseDouble(request.getParameter("pIprices")));
        p.setpGender(request.getParameter("pGender"));
        p.setpGuarantee(request.getParameter("pGuarantee"));
        p.setpDiscount(Double.parseDouble(request.getParameter("pDiscount")));
        p.setpDescription(request.getParameter("pDescription"));
        p.setpStatus(Integer.parseInt(request.getParameter("pStatus")));
        p.setpDate(Date.valueOf(request.getParameter("pDate")));

        String DIR = "img";
        String path = request.getServletContext().getRealPath("") + File.separator + DIR;

        Part part = request.getPart("pImage");
        String filename = part.getSubmittedFileName();
        part.write(path + File.separator + filename);

        p.setpImage(DIR + File.separator + filename);
//        request.setAttribute("haha", DIR + File.separator + filename);
        try {
            ProductsDAO pDAO = new ProductsDAO();
            if (request.getParameter("btnUpdate") != null) {
                int pId = Integer.parseInt(request.getParameter("pId"));
                p.setpId(pId);
                pDAO.updateProducts(p);
            } else {
                pDAO.insertProducts(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminControllers.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("./Admin/management.jsp");
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
