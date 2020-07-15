<%-- 
    Document   : buy
    Created on : Jul 7, 2020, 1:56:50 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//            int uId = 0;
//            if (request.getParameter("btnBuy") != null) {
//                Cookie cookie = request.getCookies()[3];
//                uId = Integer.parseInt(cookie.getValue());
//                request.setAttribute("idCookie", uId);
//            }
        %>
        <form action="../BuyController" method="post">
            Recipient's name: <input type="text" name="bName" />
            <br/>
            Recipient's address:<input type="text" name="bAddress"/>
            <br/>
            Recipient's phone:<input type="text" name="bPhone"/>
            <br/>
            Note:<input type="text"  name="bNote"/>
            <br/>
            <input type="submit"  name="btnBuy"/>
        </form>
    </body>
</html>
