/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.BillDAO;
import Models.DAO.CtBillDAO;
import Models.DAO.ProductsDAO;
import Models.Entity.Bills;
import Models.Entity.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "buyController", urlPatterns = {"/buyController"})
public class BuyController extends HttpServlet {

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
            out.println("<title>Servlet buyController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet buyController at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
       // xu li cac chuc nang khi mua hang
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();//tạo session khi mua hang
            BillDAO bDAO = new BillDAO();// tạo biến để gọi class BillsDAO
            CtBillDAO ctDAO = new CtBillDAO();// tạo biến để gọi class ctBillDAO
            Bills bd = new Bills();
            String uId = "";
            Cookie[] cookie = request.getCookies();
            for (Cookie c : cookie) {
                String cName = c.getName();
                if (cName.equals("uId")) {
                    uId = c.getValue();
                }
            }
            
            Enumeration<String> pIds = session.getAttributeNames();// tạo session get attrinute name
            int success = 1;
            bd.setbAddress(request.getParameter("bAddress"));

            bd.setbName(request.getParameter("bName"));
            bd.setbPhone(request.getParameter("bPhone"));
            bd.setbNote(request.getParameter("bNote"));

            int bId = bDAO.createBill(Integer.parseInt(uId), bd.getbNote(), bd.getbAddress(), bd.getbName(), bd.getbPhone());
            ProductsDAO pDAO = new ProductsDAO();
            /*
            pIds: [
            {'1': 3}, {'2': 4}, {'3': 2}
            ]
            */
            while (pIds.hasMoreElements()) {// tạo vòng lặp chạy từng phần từ 
                String pId = pIds.nextElement();
                int quantity = (int) session.getAttribute(pId);
                
                Products p = pDAO.getProducts(Integer.parseInt(pId));//lấy tất cả sản phẩm theo pId

                if (p.getpAmount() >= quantity) {// neu so luong trong san pham lon hon so luong mua
//                    bId = bDAO.createBill(Integer.parseInt(uId), bd.getbNote(), bd.getbAddress(), bd.getbName(), bd.getbPhone());// add vo bill
                    if (!ctDAO.createBillDetail(bId, Integer.parseInt(pId), quantity)) {
                        success = 0;
                    }
                }

            }

            if (bDAO.updateBillTotalPrice(bId) == 0) {
                success = 0;
            }

            response.sendRedirect("./User/products.jsp?buySuccess=" + success);
        } catch (SQLException ex) {
            ex.printStackTrace();
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
