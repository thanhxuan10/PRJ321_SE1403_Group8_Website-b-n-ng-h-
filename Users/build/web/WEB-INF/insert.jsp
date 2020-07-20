<%-- 
    Document   : insert
    Created on : Jul 15, 2020, 1:50:30 PM
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
        <form action="Users" method='post'>
            Username:<input type ="text" name="uName"/><br/>
            Password:<input type="text" name="uPass"/><br/>
            Email:<input type ="text" name="uEmail"/><br/>
            Phone:<input type ="text" name="uPhone"/><br/>
            Address:<input type ="text" name="uAddress"/><br/>
            Birthday:<input type ="text" name="uBirthday"/><br/>
            Status:<input type ="text" name="uStatus"/><br/>
            Gender:<input type ="text" name="uGender"/><br/>            
            <input type ="submit" name="Submit"/>
        </form>
    </body>
</html>
