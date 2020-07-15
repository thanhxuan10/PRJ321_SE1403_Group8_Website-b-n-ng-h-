<%-- 
    Document   : cart
    Created on : Jul 6, 2020, 3:28:00 PM
    Author     : HP
--%>

<%@page import="Models.Entity.Products"%>
<%@page import="java.util.Enumeration"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" cellpadding="0" cellspacing="0">
            <tr>
                <th>Ma sp</th>
                <th>Ten san pham</th>
                <th>So luong</th>
                <th>Don gia</th>

            </tr>

            <%
                ProductsDAO pDao = new ProductsDAO();
                // khoi tao total de luu tong tien
                int total = 0;
                // lấy tất cả các tên của đối tượng ở trong session
                Enumeration<String> pName = session.getAttributeNames();
                // vòng lặp đi qua tất cả các đối tượng
                while (pName.hasMoreElements()) {
                    // lấy id của sản phẩm 
                    String id = pName.nextElement().toString();
                    // lấy sản phẩm từ csdl bằng id
                    Products p = pDao.getProducts(Integer.parseInt(id));
                    // tính tổng tiền
                    total += p.getpBprices()* Integer.parseInt(session.getAttribute(id).toString());
                    out.print("<tr>");
                    out.print("<td>" + id + "</td>");
                    out.print("<td>" + p.getpName() + "</td>");
                    out.print("<td>" + session.getAttribute(id) + "</td>");
                    out.print("<td>" + p.getpBprices()+ "</td>");

                    out.print("</tr>");
                }
                out.print("<tr><td colspan='3'>Tong tien</td><td>" + total + "</td></tr>");

            %>
        </table>
         <a href="../products.jsp">Mua tiep</a>
         <a href="buy.jsp">Buy</a>
    </body>
    </body>
</html>
