<%-- 
    Document   : insertProduct
    Created on : Jul 5, 2020, 10:19:36 AM
    Author     : HP
--%>

<%@page import="Models.DAO.ProductsDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="Models.Entity.Products"%>
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
            .btnInsert{
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
                                try {
                                    Cookie[] cookies = request.getCookies();
                                    if (cookies.length <=1) {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("useradmin")) {
                                                response.sendRedirect("./Admin");
                                            }
                                        }
                                    } 
                                    //                out.print("Username: " + user);
                                } catch (Exception ex) {
                                   
                                }

                            %>
        


        <form action="../Admin" method='post' enctype="multipart/form-data">
              <div class="container insert">
                <div class="row">
                    <div class="col-md-3 insert-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Admin go to insert product new</p>
<!--                        <input type="submit" name="" value="Exit"/><br/>-->
                    </div>
                    <div class="col-md-9 insert-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="insert-heading">Insert product new</h3>
                                <div class="row insert-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        Image product <input type="file" class="form-control" placeholder="Product image *" name="pImage" id="pImage"/>
                                        </div>
                                        <div class="form-group">
                                        Name product <input type="text" class="form-control" placeholder="Product Name *" name="pName" id="pName"/>
                                        </div>
                                        <div class="form-group">
                                        Buy Prices <input type="text" class="form-control" placeholder="Buy priecs*"  name="pBprices" id="pBprices"/>
                                        </div>
                                        <div class="form-group">
                                        Input Prices <input type="text" class="form-control" placeholder="Input priecs *"  name="pIprices" id="pIprices"/>
                                        </div>
                                        <div class="form-group">
                                        Product Amount <input type="number" class="form-control"  placeholder="Amount *"   name="pAmount" id="pAmount"/>
                                        </div>
                                        <div class="form-group">
                                        Product status <input type="text" class="form-control"  placeholder="Status"   name="pStatus" id="pStatus"/>
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
                                        Guarantee <input type="text" class="form-control" placeholder="Guarantee *"   name="pGuarantee" id="pGuarantee"/>
                                        </div>
                                        <div class="form-group">
                                        Discount  <input type="text"  class="form-control" placeholder="Discount  *"  name="pDiscount" id="pDiscount"/>
                                        </div>
                                        <div class="form-group">
                                        Description <input type="text"  class="form-control" placeholder="Description  *"  name="pDescription" id="pDescription"/>
                                        </div>

                                        <div class="form-group">
                                         Date <input type="date" class="form-control" placeholder="Date *"  name="pDate" id="pDate" />
                                        </div>
                                       
                                        <input type="submit" class="btnInsert"name="" value="Insert"/>
                                       
                                       
                                        
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
