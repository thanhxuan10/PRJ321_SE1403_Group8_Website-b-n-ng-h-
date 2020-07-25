/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.ProductsDAO;
import Models.Entity.Products;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import until.ExportExel;
import until.DownExel;

/**
 *
 * @author HP
 */
@WebServlet(name = "ExportController", urlPatterns = {"/ExportController"})
public class ExportController extends HttpServlet {

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
            out.println("<title>Servlet ExportController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExportController at " + request.getContextPath() + "</h1>");
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
        // ham xu li export ra file excel
        try {
            ProductsDAO pDAO = new ProductsDAO();
            HashMap<Integer, Long> p = pDAO.getTop10();
            ArrayList<Products> a = new ArrayList<Products>();
            ArrayList<Long> price = new ArrayList<>();
            for (int key : p.keySet()) {
                a.add(pDAO.getProducts(key));
                price.add(p.get(key));

            }
            String path = request.getSession().getServletContext().getRealPath("/Xml/");
            String filePath = path + "1.csv";
            File upload = new File(filePath);
            upload.createNewFile();
            FileWriter writer = new FileWriter(upload);
            ExportExel.writeLine(writer, Arrays.asList("STT", "ID", "NAME",
                    "TOTALPRICE"));
            for (int i = 0; i < 10; i++) {
                ExportExel.writeLine(writer, Arrays.asList("" + (i + 1), "" + a.get(i).getpId(), a.get(i).getpName(),
                        "" + price.get(i)));
            }
            writer.flush();
            writer.close();

            FileInputStream inputStream = new FileInputStream(filePath);
            String disposition = "attachment; fileName=Top10Products.csv";
            response.setContentType("text/csv");
            response.setHeader("Content-Disposition", disposition);
            response.setHeader("content-Length", String.valueOf(DownExel.stream(inputStream, response.getOutputStream())));

            response.sendRedirect("./Admin/top10.jsp");

        } catch (SQLException ex) {
            Logger.getLogger(ExportController.class.getName()).log(Level.SEVERE, null, ex);
        }

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
