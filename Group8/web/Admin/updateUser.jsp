<%-- 
    Document   : updateUser
    Created on : Jul 9, 2020, 4:02:02 PM
    Author     : HP
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
            int uId=0;
            String uName="";
            String uPass ="";
            String uEmail ="";
            String uPhone ="";
            String uAddress="";
            String uBirthday="";
            String uGender = "";
            
            
            if(request.getParameter("uId")!=null){
                uId = Integer.parseInt(request.getParameter("uId"));
                UserDAO uDAO = new UserDAO();
                User u = uDAO.getUser(uId);
                uName = u.getuName();
                uEmail = u.getuEmail();
                uPass = u.getuPass();
                uPhone = u.getuPhone();
                uAddress = u.getuAddress();
                uBirthday = u.getuBirthday().toString();
                uGender = u.getuGender();
            }
        %>
        <form action="../UserController" method="post">
            <input type="hidden" value="<%= uId %>" name="uId" />
            Username:<input type ="text" value="<%= uName %>" name="uName" id="uName"/><br/>
            Password:<input type ="text" value="<%= uPass %>" name="uPass" id="uPass"/><br/>
            Email:<input type ="text" value="<%= uEmail %>" name="uEmail" id="uEmail"/><br/>
            Phone:<input type ="text" value="<%= uPhone %>" name="uPhone" id="uPhone"/><br/>
            Gender:<input type ="text" value="<%= uAddress %>" name="uAddress" id="uAddress"/><br/>
            Address:<input type ="text" value="<%= uBirthday %>" name="uBirthday" id="uBirthday"/><br/>
            Birthday:<input type ="text" value="<%= uGender %>" name="uGender" id="uGender"/><br/>
            
            
            <input type="submit" value="Submit" name="updateUser"/><input type="reset" value="Reset"/>
        </form>
    </body>
</html>
