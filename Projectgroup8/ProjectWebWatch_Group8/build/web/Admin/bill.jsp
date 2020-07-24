<%-- 
    Document   : bill
    Created on : Jul 9, 2020, 3:43:43 PM
    Author     : HP
--%>

<%@page import="Models.Entity.Bills"%>
<%@page import="Models.Entity.Products"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page import="Models.Entity.BillDetail"%>
<%@page import="Models.DAO.CtBillDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>




        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background:  lightblue url("https://files.123freevectors.com/wp-content/original/119622-abstract-white-background-graphic-design.jpg")no-repeat fixed center;
                background-size: 1400px 800px;
            }


        </style>


        <!-- Font Awesome -->
        <!-- Font Awesome -->






    </head>
    <body>
        <%      // xu li viec xoa bill
                if (request.getParameter("bId") != null) {
                int bId = Integer.parseInt(request.getParameter("bId"));
                BillDAO bDAO = new BillDAO();
                Bills b = bDAO.getBill(bId);
                int bStatus = b.getbStatus();
                int kq =0;
               
                if(bStatus==1){
                    kq = bDAO.updateStatus(0,bId);
                }else{
                    kq = bDAO.updateStatus(1,bId);
                }
                if (kq != 0) {
                    out.print("<script>alert('Xoa thanh cong');</script>");
                } else {
                    out.print("<script>alert('Xoa that bai');</script>");
                }
                out.print("<script>location.href='bill.jsp'</script>");
                //response.sendRedirect("studentlist.jsp");
            }
        %>
        <div class="navbar navbar-inverse nav">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="/">Group 8</a>


                    <ul class="nav">
                        <li class="divider-vertical"></li>
                        <li><a href="../webwatch/index.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                                </svg></i> Home</a></li>
                        <li><a href="./management.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M2 3a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3zm6 7a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5 2.755C12.146 11.825 10.623 11 8 11s-4.146.826-5 1.755V13a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1v-.245z"/>
                                </svg></i> User</a></li>
                        <li><a href="./user.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                </svg> Bill</a></li>
                        <li><a href="./comment.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z"/>
                                <path d="M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
                                </svg> Comment</a></li>
                        <li><a href="./top10.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z"/>
                                <path d="M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
                                </svg> Revenue</a></li>



                    </ul>
                    <div class="pull-right">
                        <ul class="nav pull-right">
                            <%// xu li viec phan quyen
                                String user = "";
                                try {
                                    Cookie[] cookies = request.getCookies();
                                    if (cookies.length <= 1) {
                                        response.sendRedirect("../Admin");
                                    } else {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("useradmin")) {
                                                out.print("<li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Welcome," + cookie.getValue() + "<b class='caret'></b></a>");
                                            }
                                        }
                                    }

                                    //                out.print("Username: " + user);
                                } catch (Exception ex) {
                                    response.sendRedirect("../Admin");
                                }

                            %>

                            <ul class="dropdown-menu">
                                <li><a href="../LogoutController"><i class="icon-off"></i> Logout</a></li>
                            </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">


                <div class="col-md-12">
                    <h4><marquee>Managament Bill by Admin</marquee></h4>
                    <div class="table-responsive">
                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>User</th>
                                    <th>Status</th>
                                    <th>Note</th>
                                    <th>Recipient's address</th>
                                    <th>Recipient's name</th>
                                    <th>Recipient's phone</th>
                                    <th>Total</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                    BillDAO bDAO = new BillDAO();
                                    ResultSet rs = bDAO.getAllBill();
                                    while (rs.next()) {
                                        out.print("<tr>");
                                        out.print("<td>" + rs.getInt("bId") + "</td>");
                                        out.print("<td>" + rs.getInt("uId") + "</td>");
                                        out.print("<td>" + rs.getString("bStatus") + "</td>");
                                        out.print("<td>" + rs.getString("bNote") + "</td>");
                                        out.print("<td>" + rs.getString("bAddress") + "</td>");
                                        out.print("<td>" + rs.getString("bName") + "</td>");
                                        out.print("<td>" + rs.getString("bPhone") + "</td>");
                                        out.print("<td>" + rs.getDouble("bTotal") + "</td>");
                                        out.print("<td>" + rs.getDate("bDate") + "</td>");

                                        out.print("<td><a href='updateBill.jsp?bId=" + rs.getInt("bId") + "'><i class='fas fa-edit'></a></td>");
                                        out.print("<td><a href='?bId=" + rs.getInt("bId") + "'><i class='fas fa-trash'></a></td>");
                                        out.print("<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#myModal'><a style='color: white' href='bill.jsp?id=" + rs.getInt("bId") + "'>Bill detail</a></button></td>");
                                        out.print("</tr>");
                                    }
                                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                                %>

                            </tbody>
                        </table>

                        <%
                            if (request.getParameter("id") != null) {
                                CtBillDAO ct = new CtBillDAO();
                                BillDetail b = ct.getCtBill(Integer.parseInt(request.getParameter("id")));
                                ProductsDAO pDAO = new ProductsDAO();
                                Products p = pDAO.getProducts(b.getpId());

                        %>


                        <div class="container"  style="width: 100%">


                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Bill Details</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            ID customer: <%= b.getbId()%><br/>
                                            Product: <%= p.getpName()%><br/>
                                            Amount: <%= b.getBdAmount()%><br/>
                                            Price: <%= b.getBdPrice()%><br/>
                                        </div>

                                        <!-- Modal footer -->
                                        <div >
                                            <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin-left: 40%">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <%}%>














                        <!-- JQuery -->
                        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <!-- Bootstrap tooltips -->
                        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
                        <!-- Bootstrap core JavaScript -->
                        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
                        <!-- MDB core JavaScript -->
                        <!-- JQuery -->
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

                        <script>
                            $(document).ready(function () {
                                $("#myModal").modal('show');
                            });
                        </script>

                        </body>
                        </html>
