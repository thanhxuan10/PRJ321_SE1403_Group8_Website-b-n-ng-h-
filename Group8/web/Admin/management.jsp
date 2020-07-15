<%-- 
    Document   : management
    Created on : Jul 6, 2020, 1:49:41 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body>

        <%            if (request.getParameter("pId") != null) {
                int pId = Integer.parseInt(request.getParameter("pId"));
                ProductsDAO pDAO = new ProductsDAO();
                int kq = pDAO.deleteProducts(pId);
                if (kq != 0) {
                    out.print("<script>alert('Xoa thanh cong');</script>");
                } else {
                    out.print("<script>alert('Xoa that bai');</script>");
                }
                out.print("<script>location.href='products.jsp'</script>");
                //response.sendRedirect("studentlist.jsp");
            }
        %>
        <table border="1" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Output price</th>
                    <th>Input price</th>
                    <th>Amount</th>
                    <th>Gender</th>
                    <th>Guarantee</th>
                    <th>Discount</th>
                    <th>Description</th>
                    <th>Date input</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ProductsDAO pDAO = new ProductsDAO();
                    ResultSet rs = pDAO.getAllProducts();
                    while (rs.next()) {
                        out.print("<tr>");
                        out.print("<td>" + rs.getInt("pId") + "</td>");
                        out.print("<td>" + rs.getString("pName") + "</td>");
                        out.print("<td>" + rs.getDouble("pBprices") + "</td>");
                        out.print("<td>" + rs.getDouble("pIprices") + "</td>");
                        out.print("<td>" + rs.getInt("pAmount") + "</td>");
                        out.print("<td>" + rs.getString("pGender") + "</td>");
                        out.print("<td>" + rs.getString("pGuarantee") + "</td>");
                        out.print("<td>" + rs.getString("pDiscount") + "</td>");
                        out.print("<td>" + rs.getString("pDescription") + "</td>");
                        out.print("<td>" + rs.getDate("pDate") + "</td>");
                        out.print("<td><a href='updateProducts.jsp?pId=" + rs.getInt("pId") + "'>Update</a></td>");
                        out.print("<td><a href='?pId=" + rs.getInt("pId") + "'>Delete</a></td>");
                        out.print("</tr>");
                    }
                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                %>
            <img src="./Img/1.png" width="200px" alt="imgeas"/>
        </tbody>
    </table>
    <%
        try {
            Cookie[] cookies = request.getCookies();
            if (cookies.length <= 1) {
                response.sendRedirect("../login.jsp");
            }

            String user = request.getCookies()[1].getValue();
            out.print("Username: " + user);
        } catch (Exception ex) {
            response.sendRedirect("../login.jsp");
        }

    %>
    <a href="../login.jsp?logout=1">logout</a>
</body>
</body>
</html>
