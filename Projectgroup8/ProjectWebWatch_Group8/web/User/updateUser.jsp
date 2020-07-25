<%-- 
    Document   : updateUser
    Created on : Jul 9, 2020, 4:02:02 PM
    Author     : HP
--%>

<%@page import="java.sql.Date"%>
<%@page import="Models.Entity.User"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Watch shop | eCommers</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

  <link rel="manifest" href="site.webmanifest">
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

  <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
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
                                       
        
        
        <%
            int uId = 0;
            String uName = "";
            String uPass = "";
            String uEmail = "";
            String uPhone = "";
            String uAddress = "";
            String uBirthday = "";
            int uStatus = 0;
            String uGender = "";

            if (request.getParameter("uId") != null) {
                uId = Integer.parseInt(request.getParameter("uId"));
                UserDAO uDAO = new UserDAO();
                User u = uDAO.getUser(uId);
                uName = u.getuName();
                uEmail = u.getuEmail();
                uPass = u.getuPass();
                uPhone = u.getuPhone();
                uAddress = u.getuAddress();
                uBirthday = u.getuBirthday().toString();
                uStatus = u.getuStatus();
                uGender = u.getuGender();
            }


        %>
        

        <form action="../UserController" method='post'>
            <div class="container insert">
                <div class="row">
                    <div class="col-md-3 insert-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Admin go to update user </p>
                        <!--                        <input type="submit" name="" value="Exit"/><br/>-->
                    </div>
                    <div class="col-md-9 insert-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="insert-heading">Edit information</h3>
                                <div class="row insert-form">
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" placeholder="User" value="<%= uId%>" name="uId" id="uId"/>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Username *" value="<%= uName%>" name="uName" id="uName"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Input mail *" value="<%= uEmail%>" name="uEmail" id="uEmail"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Phone *" value="<%= uPhone%>"  name="uPhone" id="uPhone"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">

                                                <label class="radio inline"> 
                                                    <input type="radio" name="uGender" value="Male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="uGender" value="Female">
                                                    <span>Female </span> 
                                                </label>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address *" value="<%= uAddress%>"  name="uAddress" id="uAddress"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="date"  class="form-control" placeholder="Date  *" value="<%= uBirthday%>" name="uBirthday" id="uBirthday"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  class="form-control" placeholder="Status  *" value="<%= uStatus%>" name="uStatus" id="uStatus"/>
                                        </div>
                                        <div class="form-group">
                                            <a href="changePass.jsp" style="color: blue">Change password</a>
                                        </div>

                                        <input type="submit" class="btnUpdate" name="btnUpdate"  value="Edit"/>



                                        <input type="reset" name="btnReset" id="btnReset" class="btnUpdate" value="Reset"/>
                                        


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
