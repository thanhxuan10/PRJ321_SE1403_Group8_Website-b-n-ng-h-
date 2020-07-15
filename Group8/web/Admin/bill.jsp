<%-- 
    Document   : bill
    Created on : Jul 9, 2020, 3:43:43 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table border="1" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User</th>
                    <th>Status</th>
                    <th>Note</th>
                    <th>Recipient's name</th>
                    <th>Recipient's address</th>
                    <th>Recipient's phone</th>
                    <th>Total</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <%
                    BillDAO pDAO = new BillDAO();
                    ResultSet rs = pDAO.getAllBill();
                    while (rs.next()) {
                        out.print("<tr>");
                        out.print("<td>" + rs.getInt("bId") + "</td>");
                        out.print("<td>" + rs.getInt("uId") + "</td>");
                        out.print("<td>" + rs.getString("bStatus") + "</td>");
                        out.print("<td>" + rs.getString("bNote") + "</td>");
                        out.print("<td>" + rs.getString("bAddress") + "</td>");
                        out.print("<td>" + rs.getString("bName") + "</td>");
                        out.print("<td>" + rs.getString("bPhone") + "</td>");
                        out.print("<td>" + rs.getDouble("bTotal") + "</td>");
                        out.print("<td>" + rs.getDate("bDate") + "</td>");

                        out.print("<td><a href='updateBill.jsp?bId=" + rs.getInt("bId") + "'>Update</a></td>");
                        out.print("<td><a href='detailBill.jsp?bId=" + rs.getInt("bId") + "'>Bill detail</a></td>");
                        out.print("</tr>");
                    }
                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                %>

            </tbody>
        </table>
    </body>
</html>
