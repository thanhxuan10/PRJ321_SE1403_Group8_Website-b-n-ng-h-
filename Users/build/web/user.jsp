<%-- 
    Document   : products
    Created on : Jul 5, 2020, 9:22:47 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("uId") != null) {
                int uId = Integer.parseInt(request.getParameter("uId"));
                UserDAO uDAO = new UserDAO();
                int rs = uDAO.deleteUsers(uId);
                if (rs != 0) {
                    out.print("<script>alert('Delete Complete!');</script>");
                } else {
                    out.print("<script>alert('Can't Delete!);</script>");
                }
                out.print("<script>location.href='products.jsp'</script>");
                //response.sendRedirect("studentlist.jsp");
            }
        %>
        <table border="1" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>UserName</th>
                    <th>PassWord</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    UserDAO uDAO = new UserDAO();
                    ResultSet rss = uDAO.getAllUser();
                    while (rss.next()) {
                        out.print("<tr>");
                        out.print("<td>" + rss.getInt("uId") + "</td>");
                        out.print("<td>" + rss.getString("uName") + "</td>");
                        out.print("<td>" + rss.getString("uPass") + "</td>");                        
                        out.print("<td>" + rss.getString("uGender") + "</td>");
                        out.print("<td>" + rss.getString("uAddress") + "</td>");
                        out.print("<td>" + rss.getString("uPhone") + "</td>");
                        out.print("<td>" + rss.getString("uEmail") + "</td>");
                        out.print("<td>" + rss.getInt("uStatus") + "</td>");
                        out.print("<td><a href='update.jsp?uId=" + rss.getInt("uId") + "'>Update</a></td>");
                        out.print("<td><a href='?uId=" + rss.getInt("uId") + "'>Delete</a></td>");
                        out.print("</tr>");
                    }
                %>                
            </tbody>
        </table>
    </body>
</html>
