/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.AdminDAO;
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
@WebServlet(name = "LoginControllers", urlPatterns = {"/LoginControllers"})
public class LoginControllers extends HttpServlet {

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
            out.println("<title>Servlet LoginControllers</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginControllers at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        try {
            UserDAO uDAO = new UserDAO();
        if (request.getParameter("Login_user") != null) {
            
        
            String user = request.getParameter("txtUsername");
            String pass = request.getParameter("txtPassword");
            int uId =uDAO.login(request.getParameter("txtUsername"), request.getParameter("txtPassword"));
            
                
                
                if (uId !=-1) {
                    Cookie userCookie = new Cookie("user", user);
                    Cookie passCookie = new Cookie("pass", pass);
                    Cookie idCookie = new Cookie("uId", uId+"");

                    userCookie.setMaxAge(60 * 60 * 24);
                    passCookie.setMaxAge(60 * 60 * 24);
                    idCookie.setMaxAge(60 * 60 * 24);
                    response.addCookie(userCookie);
                    response.addCookie(passCookie);
                    response.addCookie(idCookie);
                    
                    response.sendRedirect("products.jsp");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('User or password incorrect');");
                    out.println("location='login.jsp';");
                    out.println("</script>");

                }}
            } catch (SQLException ex) {
                Logger.getLogger(LoginControllers.class.getName()).log(Level.SEVERE, null, ex);
            }

        
//        if (request.getParameter("Login_user") != null) {
//            try {
//                UserDAO uDAO = new UserDAO();
//                if (uDAO.login(request.getParameter("txtUsername"), request.getParameter("txtPassword")) == true) {
//                    response.sendRedirect("products.jsp");
//                }else {
//                    out.println("<script type=\"text/javascript\">");
//                    out.println("alert('User or password incorrect');");
//                    out.println("location='./User/login.jsp';");
//                    out.println("</script>");
//                    
//                }
//
//            } catch (SQLException ex) {
//                Logger.getLogger(LoginControllers.class.getName()).log(Level.SEVERE, null, ex);
//            }
//
//        }
        if (request.getParameter("Login_admin") != null) {

                String user = request.getParameter("txtUsername");
                String pass = request.getParameter("txtPassword");
                try {
                    AdminDAO aDAO = new AdminDAO();
                    if (aDAO.loginAdmin(request.getParameter("txtUsername"), request.getParameter("txtPassword")) == true) {
                        Cookie userCookie = new Cookie("user", user);
                        Cookie passCookie = new Cookie("pass", pass);

                        userCookie.setMaxAge(60 * 60 * 24);
                        passCookie.setMaxAge(60 * 60 * 24);

                        response.addCookie(userCookie);
                        response.addCookie(passCookie);

                        response.sendRedirect("./Admin/management.jsp");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('User or password incorrect');");
                        out.println("location='login.jsp';");
                        out.println("</script>");

                    }
                } catch (SQLException ex) {
                    Logger.getLogger(LoginControllers.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
//        if (request.getParameter("Login_admin") != null) {
//            try {
//                AdminDAO aDAO = new AdminDAO();
//                if (aDAO.loginAdmin(request.getParameter("txtUsername"), request.getParameter("txtPassword")) == true) {
//                    response.sendRedirect("./Admin/management.jsp");
//                } else {
//                    out.println("<script type=\"text/javascript\">");
//                    out.println("alert('User or password incorrect');");
//                    out.println("location='./User/login.jsp';");
//                    out.println("</script>");
//
//                }
//
//            } catch (SQLException ex) {
//                Logger.getLogger(LoginControllers.class.getName()).log(Level.SEVERE, null, ex);
//            }
//
//        }
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
