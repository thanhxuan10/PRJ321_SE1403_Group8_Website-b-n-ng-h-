<%-- 
    Document   : updateProducts
    Created on : Jul 5, 2020, 11:26:48 AM
    Author     : HP
--%>

<%@page import="java.sql.Date"%>
<%@page import="Models.Entity.Products"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .insert{
                background: -webkit-linear-gradient(left, #3931af, #00c6ff);
                margin-top: 3%;
                padding: 3%;
            }
            .insert-left{
                text-align: center;
                color: #fff;
                margin-top: 4%;
            }
            .insert-left input{
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                width: 60%;
                background: #f8f9fa;
                font-weight: bold;
                color: #383d41;
                margin-top: 30%;
                margin-bottom: 3%;
                cursor: pointer;
            }
            .insert-right{
                background: #f8f9fa;
                border-top-left-radius: 10% 50%;
                border-bottom-left-radius: 10% 50%;
            }
            .insert-left img{
                margin-top: 15%;
                m;argin-bottom: 5%;
                width: 25%;
                -webkit-animation: mover 2s infinite  alternate;
                animation: mover 1s infinite  alternate;
            }
            @-webkit-keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            @keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            .insert-left p{
                font-weight: lighter;
                padding: 12%;
                margin-top: -9%;
            }
            .insert .insert-form{
                padding: 10%;
                margin-top: 10%;
            }
            .btnUpdate{
                float: right;
                margin-top: 10%;
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                background: #0062cc;
                color: #fff;
                font-weight: 600;
                width: 50%;
                cursor: pointer;
            }
            .insert .nav-tabs{
                margin-top: 3%;
                border: none;
                background: #0062cc;
                border-radius: 1.5rem;
                width: 28%;
                float: right;
            }
            .insert .nav-tabs .nav-link{
                padding: 2%;
                height: 34px;
                font-weight: 600;
                color: #fff;
                border-top-right-radius: 1.5rem;
                border-bottom-right-radius: 1.5rem;
            }
            .insert .nav-tabs .nav-link:hover{
                border: none;
            }
            .insert .nav-tabs .nav-link.active{
                width: 100px;
                color: #0062cc;
                border: 2px solid #0062cc;
                border-top-left-radius: 1.5rem;
                border-bottom-left-radius: 1.5rem;
            }
            .insert-heading{
                text-align: center;
                margin-top: 8%;
                margin-bottom: -15%;
                color: #495057;
            }
        </style>
    </head>
    <body>
        <%
                                String user = "";
                                try {
                                    Cookie[] cookies = request.getCookies();
                                    if (cookies.length <= 1) {
                                        response.sendRedirect("../Admin");
                                    } else {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("useradmin")) {
                                                out.print( "<li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Welcome,"+cookie.getValue()+"<b class='caret'></b></a>" );
                                            }
                                        }
                                    }

                                    //                out.print("Username: " + user);
                                } catch (Exception ex) {
                                    response.sendRedirect("../Admin");
                                }

                                    %>
        
        
        
        <%
            int pId = 0;
            String pName = "";
            double pBprices = 0;
            double pIprices = 0;
            int pAmount = 0;
            String pGender = "";
            String pGuarantee = "";
            double pDiscount = 0;
            String pDescription = "";
            String pDate = "";
            String pImage ="";
            int pStatus =0;


            if (request.getParameter("pId") != null) {
               
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
                pImage = p.getpImage();
                pStatus = p.getpStatus();
          
                
            }
 %>
        
     
        <form action="../Admin" method='post' enctype="multipart/form-data">
            <div class="container insert">
                <div class="row">
                    <div class="col-md-3 insert-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Admin go to update product new</p>
<!--                        <input type="submit" name="" value="Exit"/><br/>-->
                    </div>
                    <div class="col-md-9 insert-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="insert-heading">Update product</h3>
                                <div class="row insert-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="file" class="form-control" placeholder="Product image *" value="<%= pImage%>" name="pImage" id="pImage"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" placeholder="Product id *" value="<%= pId%>" name="pId" id="pId"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Product Name *" value="<%= pName%>" name="pName" id="pName"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Buy priecs*" value="<%= pBprices%>" name="pBprices" id="pBprices"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Input priecs *" value="<%= pIprices%>" name="pIprices" id="pIprices"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Amount *" value="<%= pAmount%>"  name="pAmount" id="pAmount"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" class="form-control"   value="<%= pStatus%>"  name="pStatus" id="pStatus"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                
                                                <label class="radio inline"> 
                                                    <input type="radio" name="pGender" value="Male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                     <label class="radio inline"> 
                                                    <input type="radio" name="pGender" value="Female">
                                                    <span>Female </span> 
                                                </label>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Guarantee *" value="<%= pGuarantee%>"  name="pGuarantee" id="pGuarantee"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Discount  *" value="<%= pDiscount%>" name="pDiscount" id="pDiscount"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Description  *" value="<%= pDescription%>" name="pDescription" id="pDescription"/>
                                        </div>

                                        <div class="form-group">
                                            <input type="date" class="form-control" placeholder="Date *" value="<%= pDate%>" name="pDate" id="pDate" />
                                        </div>  
                                        
                                           <input type="submit" class="btnUpdate" name="btnUpdate"  value="Update"/>
                                           
                                        
                                        
                                           <input type="reset" name="btnReset" id="btnReset" class="btnUpdate" value="Reset"/>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</form>
</body>
</html>
 