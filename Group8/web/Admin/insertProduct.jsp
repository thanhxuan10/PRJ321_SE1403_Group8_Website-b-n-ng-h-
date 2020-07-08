<%-- 
    Document   : insertProduct
    Created on : Jul 5, 2020, 10:19:36 AM
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
        <form action="Admin" method='post'>
            Product's name:<input type ="text" name="pName"/><br/>
            Buy prices:<input type ="text" name="pBprices"/><br/>
            Input prices:<input type ="text" name="pIprices"/><br/>
            Product's amount:<input type ="number" name="pAmount"/><br/>
            Gender:<input type ="text" name="pGender"/><br/>
            Guarantee:<input type ="text" name="pGuarantee"/><br/>
            Discount:<input type ="text" name="pDiscount"/><br/>
            Description:<input type ="text" name="pDescription"/><br/>
            Date:<input type ="date" name="pDate"/><br/>
            <input type ="submit" name="Submit"/>
        </form>
    </body>
</html>
