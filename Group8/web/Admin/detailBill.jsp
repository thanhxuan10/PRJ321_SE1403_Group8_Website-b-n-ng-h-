<%-- 
    Document   : detailBill
    Created on : Jul 13, 2020, 4:22:16 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="conn" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:setDataSource var="conn" scope="session"
                       url="jdbc:mysql://localhost/group8"
                       user="root" password=""
                       driver="com.mysql.jdbc.Driver"/>
    <sql:query var="bill" dataSource="${conn}" >
        Select * from billdetail
    </sql:query>
    <table width="100%" border="1px" align="center">
        <tr bgcolor ="#CFCF99">
            <c:forEach var="columnName" items="${bill.columnNames}">
                <td width="27%"><c:out value="${columnName}"/></td>
            </c:forEach>

        </tr>
        <c:forEach var="row" items="${bill.rows}">
            <tr>

                <td><c:out value="${row.bId}"/></td>
                <td><c:out value="${row.pId}"/></td>
                <td><c:out value="${row.bdAmount}"/></td>
                <td><c:out value="${row.bdPrice}"/></td>


            </tr>
        </c:forEach>



    </table>

</body>
</html>
