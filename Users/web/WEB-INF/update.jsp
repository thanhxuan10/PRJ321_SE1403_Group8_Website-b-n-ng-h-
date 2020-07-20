<%-- 
    Document   : update
    Created on : Jul 15, 2020, 1:50:50 PM
    Author     : ASUS
--%>

<%@page import="Models.Entity.User"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int uId = 0;
            int uStatus = 0;
            String uName = "";
            String uPass = "";
            String uEmail = "";
            String uPhone = "";
            String uAddress = "";
            String uGender = "";
            String uBirthday = "";

            if (request.getParameter("uId") != null) {
                uId = Integer.parseInt(request.getParameter("uId"));
                UserDAO uDAO = new UserDAO();
                User u = uDAO.getUser(uId);
                uName = u.getuName();
                uPass = u.getuPass();
                uEmail = u.getuEmail();
                uPhone = u.getuPhone();
                uAddress = u.getuAddress();
                uGender = u.getuGender();
                uBirthday = u.getuBirthday().toString();
            }
        %>
        <form action="Users" method='post'>
            <input type="hidden" value="<%= uId%>" name="pId" />
            Username:<input type ="text" value="<%= uName%>" name="uName" id="uName"/><br/>
            Password:<input type="text" value="<%= uPass%>" name="uPass" id="uPass"/><br/>
            Email:<input type ="text" value="<%= uEmail%>" name="uEmail" id="uEmail"/><br/>
            Phone:<input type ="text" value="<%= uPhone%>" name="uPhone" id="uPhone"/><br/>
            Address:<input type ="text" value="<%= uAddress%>" name="uAddress" id="uAddress"/><br/>
            Birthday:<input type ="text" value="<%= uBirthday%>" name="uBirthday" id="uBirthday"/><br/>
            Status:<input type ="text" value="<%= uStatus%>" name="uStatus" id="uStatus"/><br/>
            Gender:<input type ="text" value="<%= uGender%>" name="uGender" id="uGender"/><br/>
            <input type="submit" value="Submit" name="btnUpdate"/><input type="delete" value="Delete" name="btnDelete"/>
        </form>
    </body>
</html>
