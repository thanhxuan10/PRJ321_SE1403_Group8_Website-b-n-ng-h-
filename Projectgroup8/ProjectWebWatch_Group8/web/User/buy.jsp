<%-- 
    Document   : login
    Created on : Jul 5, 2020, 2:18:01 PM
    Author     : HP
--%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--    Fontawesome CDN
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="styles.css">
        <!--Custom styles-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Watch shop | eCommers</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <style>
            /* Made with love by Mutiullah Samim*/

            @import url('https://fonts.googleapis.com/css?family=Numans');

            html,body{
                background-image: url('https://blog.hamtruyentranh.com/wp-content/uploads/2019/01/as.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;
            }

            .container{
                height: 100%;
                align-content: center;
            }

            .card{
                height: 370px;
                margin-top: auto;
                margin-bottom: auto;
                width: 400px;
                background-color: rgba(0,0,0,0.5) !important;
            }

            .social_icon span{
                font-size: 60px;
                margin-left: 10px;
                color: #FFC312;
            }

            .social_icon span:hover{
                color: white;
                cursor: pointer;
            }

            .card-header h3{
                color: white;
            }

            .social_icon{
                position: absolute;
                right: 20px;
                top: -45px;
            }

            .input-group-prepend span{
                width: 40px;
                background-color: #FFC312;
                color: black;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;

            }

            .remember{
                color: white;
            }

            .remember input
            {
                width: 20px;
                height: 20px;
                margin-left: 15px;
                margin-right: 5px;
            }
            .input-group form-group{
                color:white;
                width: 100%;
            }

            .login_btn{
                color: black;
                background-color: #FFC312;
                width: 170px;
                /*margin-left:15px;*/
            }

            .login_btn:hover{
                color: black;
                background-color: white;
            }

            .links{
                color: white;
            }

            .links a{
                margin-left: 4px;
            }

            .btn float-center login_btn{
                margin-left: 100px;
                width: 100%;
            }
            .card-footer{
                margin-bottom:  100px;
            }

        </style>
    </head>
    <body>

        <%
            String user = "";
            try {
                Cookie[] cookies = request.getCookies();
                if (cookies.length <= 1) {
                    response.sendRedirect("../webwatch/login.jsp");
                } else {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("useradmin")) {
                            response.sendRedirect("../Admin");
                        }
                    }
                }

                //                out.print("Username: " + user);
            } catch (Exception ex) {
                response.sendRedirect("../webwatch/login.jsp");
            }

        %>


        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Information to buy</h3>

                    </div>
                    <div class="card-body">
                        <form action="../buyController" method="post">
                            <div class="input-group form-group">
                                <input type="text" class="form-control" placeholder="Recipient's name:" name="bName">
                            </div>
                            <div class="input-group form-group">
                                <input type="text" class="form-control" placeholder="Recipient's address" name="bAddress">
                            </div>
                            <div class="input-group form-group">


                                <input type="text" class="form-control" placeholder="Recipient's phone" name="bPhone">
                            </div>
                            <div class="input-group form-group">
                                <input type="text" class="form-control" placeholder="Note" name="bNote">
                            </div>
                            <!--<div class="row align-items-center remember">-->
                            <!--	<input type="checkbox">Remember Me-->
                            <!--</div>-->
                            <div class="form-group">

                                <input type="submit"  name="btnBuy" value="Submit" class="btn float-center login_btn" style="width: 100%"/>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>

