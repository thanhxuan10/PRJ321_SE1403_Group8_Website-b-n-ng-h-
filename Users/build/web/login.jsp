<%-- 
    Document   : login
    Created on : Jul 16, 2020, 3:18:01 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../LoginControllers" method="post">
            Username: <input type="text" name="uName"/><br/>
            Password: <input type="password" name="uPass"/><br/>
            <input type="submit" name="Login"/>
        </form>
    </body>
</html>
