<%-- 
    Document   : updateProducts
    Created on : Jul 5, 2020, 11:26:48 AM
    Author     : HP
--%>

<%@page import="Models.Entity.Products"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            int pId=0;
            String pName="";
            double pBprices =0;
            double pIprices =0;
            int pAmount =0;
            String pGender="";
            String pGuarantee="";
            String pDiscount = "";
            String pDescription = "";
            String pDate ="";
            
            if(request.getParameter("pId")!=null){
                pId = Integer.parseInt(request.getParameter("pId"));
                ProductsDAO pDAO = new ProductsDAO();
                Products p = pDAO.getProducts(pId);
                pName = p.getpName();
                pBprices = p.getpBprices();
                pIprices = p.getpIprices();
                pAmount = p.getpAmount();
                pGender = p.getpGender();
                pGuarantee = p.getpGuarantee();
                pDiscount = p.getpDiscount();
                pDescription = p.getpDescription();
                pDate = p.getpDate().toString();
            }
        %>
        <form action="Admin" method='post'>
            <input type="hidden" value="<%= pId %>" name="pId" />
            Product's name:<input type ="text" value="<%= pName %>" name="pName" id="pName"/><br/>
            Buy prices:<input type ="text" value="<%= pBprices %>" name="pBprices" id="pBprices"/><br/>
            Input prices:<input type ="text" value="<%= pIprices %>" name="pIprices" id="pIprices"/><br/>
            Product's amount:<input type ="number" value="<%= pAmount %>" name="pAmount" id="pAmount"/><br/>
            Gender:<input type ="text" value="<%= pGender %>" name="pGender" id="pGender"/><br/>
            Guarantee:<input type ="text" value="<%= pGuarantee %>" name="pGuarantee" id="pGuarantee"/><br/>
            Discount:<input type ="text" value="<%= pDiscount %>" name="pDiscount" id="pDiscount"/><br/>
            Description:<input type ="text" value="<%= pDescription %>" name="pDescription" id="pDescription"/><br/>
            Date:<input type ="date" value="<%= pDate %>" name="pDate" id="pDate"/><br/>
            <input type="submit" value="Submit" name="btnUpdate"/><input type="reset" value="Reset"/>
        </form>
    </body>
</html>
