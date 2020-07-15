<%-- 
    Document   : UpdateBill
    Created on : Jul 9, 2020, 4:02:14 PM
    Author     : HP
--%>

<%@page import="Models.Entity.Bills"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int bId = 0;
            String bName = "";
            String bNote = "";
            String bStatus = "";
            String bPhone = "";
            String bAddress = "";
            double bTotal = 0;
            String bDate = "";

            if (request.getParameter("bId") != null) {
                bId = Integer.parseInt(request.getParameter("bId"));
                BillDAO bDAO = new BillDAO();
                Bills b = bDAO.getBill(bId);
                bName = b.getbName();
                bNote = b.getbNote();
                bStatus = b.getbStatus();
                bPhone = b.getbPhone();
                bAddress = b.getbAddress();
                bDate = b.getbDate().toString();
                bTotal = b.getbTotal();
            }
        %>
        <form action="../BillController" method="post">
            <input type="hidden" value="<%= bId%>" name="bId" />
            Recipient's name:<input type ="text" value="<%= bName%>" name="bName" id="bName"/><br/>
            Recipient's address<input type ="text" value="<%= bAddress%>" name="bAddress" id="bAddress"/><br/>
            Note:<input type ="text" value="<%= bNote%>" name="bNote" id="bNote"/><br/>
            Recipient's phone<input type ="text" value="<%= bPhone%>" name="bPhone" id="bPhone"/><br/>
            Date:<input type ="text" value="<%= bDate%>" name="bDate" id="bDate"/><br/>
            Status:<input type ="text" value="<%= bStatus%>" name="bStatus" id="bStatus"/><br/>

            <input type="submit" value="Submit" name="btnBill"/><input type="reset" value="Reset"/>
        </form>
    </body>
</html>
