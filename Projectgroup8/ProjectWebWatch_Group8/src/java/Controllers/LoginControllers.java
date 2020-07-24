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
       
                Cookie[] list = request.getCookies();
                for (Cookie items : list) {
                    if (items.getName().equals("user")) {
                        items.setMaxAge(0);
                        response.addCookie(items);
                    }
                    if (items.getName().equals("pass")) {
                        items.setMaxAge(0);
                        response.addCookie(items);
                    }
                    
                    if (items.getName().equals("uId")) {
                        items.setMaxAge(0);
                        response.addCookie(items);
                    }
                }
                
        
        response.sendRedirect("./webwatch/home");
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
            int uId =uDAO.login(user,pass);
            
                
                
                if (uId !=-1) {
                    Cookie userCookie = new Cookie("user", user);
                    
                    Cookie idCookie = new Cookie("uId", uId+"");

                    userCookie.setMaxAge(60 * 60 * 24);
                    
                    idCookie.setMaxAge(60 * 60 * 24);
                    response.addCookie(userCookie);
                    
                    response.addCookie(idCookie);
                    
                    response.sendRedirect("./webwatch/home");
                } else {
//                    out.println("<script type=\"text/javascript\">");
//                    out.println("alert('User or password incorrect');");
//                    out.println("location='./webwatch/login.jsp';");
//                    out.println("</script>");
                    response.sendRedirect("./webwatch/login.jsp?message=fail");

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

                String useradmin = request.getParameter("txtUser");
                String passadmin = request.getParameter("txtPass");
                try {
                    AdminDAO aDAO = new AdminDAO();
                    if (aDAO.loginAdmin(useradmin, passadmin) == true) {
                        Cookie useradminCookie = new Cookie("useradmin", useradmin);
                        

                        useradminCookie.setMaxAge(60 * 60 * 24);
                        

                        response.addCookie(useradminCookie);
                        

                        response.sendRedirect("./Admin/management.jsp");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('User or password incorrect');");
                        out.println("location='./Admin.jsp';");
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
