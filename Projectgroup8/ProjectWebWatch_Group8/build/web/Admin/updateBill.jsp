<%-- 
    Document   : UpdateBill
    Created on : Jul 9, 2020, 4:02:14 PM
    Author     : HP
--%>

<%@page import="java.sql.Date"%>
<%@page import="Models.Entity.Bills"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        
        
        
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
            int bId = 0;
            int uId = 0;
            String bName = "";
            String bNote = "";
            int bStatus = 0;
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
                bPhone = b.getbPhone();
                bAddress = b.getbAddress();
                bDate = b.getbDate().toString();
                bTotal = b.getbTotal();
                bStatus = b.getbStatus();
            }

        %>
        <form action="../billController" method="post">
            <div class="container insert">
                <div class="row">
                    <div class="col-md-3 insert-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Admin go to update bill new</p>
<!--                        <input type="submit" name="" value="Exit"/><br/>-->
                    </div>
                    <div class="col-md-9 insert-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="insert-heading">Update bill</h3>
                                <div class="row insert-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" placeholder="Bill id *" value="<%= bId%>" name="bId" id="bId"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="User id *" value="<%= uId%>" name="uId" id="uId"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" placeholder="Bill status*" value="<%= bStatus%>" name="bStatus" id="bStatus"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Bill note *" value="<%= bNote%>" name="bNote" id="bNote"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Bill address *" value="<%= bAddress%>"  name="bAddress" id="bAddress"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Bill name *" value="<%= bName%>"  name="bName" id="bName"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Bill phone  *" value="<%= bPhone%>" name="bPhone" id="bPhone"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Bill total  *" value="<%= bTotal%>" name="bTotal" id="bTotal"/>
                                        </div>

                                        <div class="form-group">
                                            <input type="date" class="form-control" placeholder="Bill date *" value="<%= bDate%>" name="bDate" id="bDate" />
                                        </div>  
                                        
                                           <input type="submit" class="btnUpdate" name="btnBill"  value="Update"/>
                                           
                                        
                                        
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
