<%-- 
    Document   : user
    Created on : Jul 9, 2020, 3:43:58 PM
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
        <%            if (request.getParameter("uId") != null) {
                int uId = Integer.parseInt(request.getParameter("uId"));
                UserDAO pDAO = new UserDAO();
                int kq = pDAO.deleteUsers(uId);
                if (kq != 0) {
                    out.print("<script>alert('Xoa thanh cong');</script>");
                } else {
                    out.print("<script>alert('Xoa that bai');</script>");
                }
                out.print("<script>location.href='user.jsp'</script>");
                //response.sendRedirect("studentlist.jsp");
            }
        %>
        <table border="1" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Birthday</th>
                    <th>Gender</th>
                </tr>
            </thead>
            <tbody>
                <%
                    UserDAO pDAO = new UserDAO();
                    ResultSet rs = pDAO.getAllUser();
                    while (rs.next()) {
                        out.print("<tr>");
                        out.print("<td>" + rs.getInt("uId") + "</td>");
                        out.print("<td>" + rs.getString("uName") + "</td>");
                        out.print("<td>" + rs.getString("uPass") + "</td>");
                        out.print("<td>" + rs.getString("uEmail") + "</td>");
                        out.print("<td>" + rs.getString("uPhone") + "</td>");
                        out.print("<td>" + rs.getString("uAddress") + "</td>");
                        out.print("<td>" + rs.getString("uBirthday") + "</td>");
                        out.print("<td>" + rs.getString("uGender") + "</td>");
                        
                        out.print("<td><a href='updateUser.jsp?uId="+rs.getInt("uId")+"'>Update</a></td>");
                         out.print("<td><a href='?uId="+rs.getInt("uId")+"'>Delete</a></td>");
                        out.print("</tr>");
                    }
                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                %>
            <img src="./Img/1.png" width="200px" alt="imgeas"/>
        </tbody>
    </table>
    </body>
</html>
