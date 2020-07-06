<%-- 
    Document   : register
    Created on : Jul 5, 2020, 2:21:55 PM
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
        <form action="../RegisterConroller" method="post">
            Enter username: <input type="text" name="txtName"/><br/>
            Enter password: <input type="password" name="txtPass"/><br/>
            <!--Enter password again: <input type="password" name="txtPasswordAgain"/><br/>!-->
            Enter address: <input type="text" name="txtAddress"/><br/>
            Enter email: <input type="text" name="txtEmail"/><br/>
            Enter phone: <input type="text" name="txtPhone"/><br/>
            Enter birthday: <input type="date" name="txtBirthday"/><br/>
            Enter status: <input type="number" name="txtStatus"/><br/>
            Gender <select name="txtGender">
                <option value=0>Nam</option>
                <option value=1>Nữ</option>
                <option value=2>Khác</option>
            </select><br/>
            <input type="submit" name="Submit"/>
        </form>
    </body>
</html>
