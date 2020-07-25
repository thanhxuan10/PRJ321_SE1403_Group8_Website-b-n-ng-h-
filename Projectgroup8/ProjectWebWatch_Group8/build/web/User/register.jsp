<%-- 
    Document   : register
    Created on : Jul 5, 2020, 2:21:55 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">



  <!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Numans');
            html, body{
                background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 80%;
                font-family: 'Numans', sans-serif;
            }
            .divider-text {
                position: relative;
                text-align: center;
                margin-top: 15px;
                margin-bottom: 15px;
            }
            .divider-text span {
                padding: 7px;
                font-size: 12px;
                position: relative;   
                z-index: 2;
            }
            .divider-text:after {
                content: "";
                position: absolute;
                width: 100%;
                border-bottom: 1px solid #ddd;
                top: 55%;
                left: 0;
                z-index: 1;
            }
            .card-title mt-3 text-center{
                color: white;
            }
            .text-center{
                color: white;
            }

           
        </style>
    </head>
    <body>
        
        <% 
         String msg = request.getParameter("message");
        if(msg!=null && msg.equals("fail")) { %>
        
        
        <%
            String user = "";
            try {
                Cookie[] cookies = request.getCookies();
                if (cookies.length > 1) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("useradmin")) {
                            response.sendRedirect("../Admin");
                        }
                    }
                }

                //                out.print("Username: " + user);
            } catch (Exception ex) {
                 response.sendRedirect("../webwatch/register.jsp");
            }

        %>
<!-- Frame Modal Bottom -->
            <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                <div class="modal-dialog modal-frame modal-top" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row d-flex justify-content-center align-items-center">
                                <p class="pt-3 pr-2 text-danger">You need input enough information!</p>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        
        
     <% 
         }if(msg!=null && msg.equals("f")) {
%>
<!-- Frame Modal Bottom -->
            <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                <div class="modal-dialog modal-frame modal-top" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row d-flex justify-content-center align-items-center">
                               <p class="pt-3 pr-2 text-danger">Enter password equal password again!</p>
                                
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        
        <%}if(msg!=null && msg.equals("e")) {
     
     %>
        
     <!-- Frame Modal Bottom -->
            <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                <div class="modal-dialog modal-frame modal-top" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row d-flex justify-content-center align-items-center">
                                <p class="pt-3 pr-2 text-danger">Email error!</p>
                                
                               <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     <%}%>
        
        
        <div>
            <article class="card-body mx-auto" style="max-width: 400px;">
                <h4 class="card-title mt-3 text-center">Create Account</h4>
                <p class="text-center">Get started with your free account</p>


                <form  action="../RegisterConroller" method="post">
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                        </div>
                        <input name="txtName" class="form-control" placeholder="Name" type="text">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input name="txtPass" class="form-control" placeholder="Password" type="password">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input name="txtPasswordAgain" class="form-control" placeholder="Confirm Password" type="password">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="material-icons" style="font-size:16px">edit_location</i> </span>
                        </div>
                        <input name="txtAddress" class="form-control" placeholder="Address" type="text">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                        </div>
                        <input name="txtEmail" class="form-control" placeholder="Email" type="text">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                        </div>
<!--                        <select class="custom-select" style="max-width: 120px;">
                            <option selected="">+971</option>
                            <option value="1">+972</option>
                            <option value="2">+198</option>
                            <option value="3">+701</option>-->
<!--                        </select>-->
                        <input name="txtPhone" class="form-control" placeholder="Phone number" type="text" >
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-building"></i> </span>
                        </div>
                        <input name="txtBirthday" class="form-control" placeholder="Birthday" type="Date">
                    </div> <!-- form-group// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                        </div>
                        <select name="txtGender" style="max-width: 120px;">
                            <option value="0">Men</option>
                            <option value="1">Women</option>
                            <option value="2">Other</option>
                        </select>
                        <!--    	<input name="txtGender" class="form-control" placeholder="Gender" >-->

                    </div>                               
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block" name="Submit"> Create Account  </button>
                    </div> <!-- form-group// -->      
                    <p class="text-center">Have an account? <a href="../webwatch/login.jsp">Log In</a> </p>                                                                 
                </form>
            </article>
        </div> <!-- card.// -->

    </div> 
    
    <script>
            $(document).ready(function () {
                $("#frameModalBottom").modal('show');
            });
        </script>
   
</body>
</html>
