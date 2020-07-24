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
 * @author HP
 */
@WebServlet(name = "RegisterConroller", urlPatterns = {"/RegisterConroller"})
public class RegisterConroller extends HttpServlet {

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
            out.println("<title>Servlet RegisterConroller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterConroller at " + request.getContextPath() + "</h1>");
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
        // xu li va bat loi tao tai khoan
        try {
        User u = new User();
        String name =request.getParameter("txtName");
        String address =request.getParameter("txtAddress");
        String email =request.getParameter("txtEmail");
        String phone =request.getParameter("txtPhone");
        String pass =request.getParameter("txtPass");
        String apass =request.getParameter("txtPasswordAgain");
        String gender =request.getParameter("txtGender");
        String date =request.getParameter("txtBirthday");
        if(name.equals("")||address.equals("")||email.equals("")||pass.equals("")||gender.equals("")||date.equals("")){
            response.sendRedirect("./User/register.jsp?message=fail");
        }else if(!pass.equals(apass)){
            response.sendRedirect("./User/register.jsp?message=f");
        }else if(!email.contains("@")){
            response.sendRedirect("./User/register.jsp?message=e");
        }else{

        u.setuName(name);
        u.setuAddress(address);
        u.setuEmail(email);
        u.setuPhone(phone);
        u.setuPass(pass);
        u.setuGender(gender);
        Date pDate = Date.valueOf(date);
        u.setuBirthday(pDate);
        
        
            UserDAO uDAO = new UserDAO();
            uDAO.insertUsers(u);
            response.sendRedirect("./webwatch/login.jsp");
        }
        
        } catch (SQLException ex) {
            response.sendRedirect("./User/register.jsp?message=fail");
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
