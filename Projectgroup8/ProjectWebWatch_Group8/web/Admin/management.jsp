<%-- 
    Document   : management
    Created on : Jul 6, 2020, 1:49:41 PM
    Author     : HP
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="Models.Entity.Products"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.ProductsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background:  lightblue url("https://files.123freevectors.com/wp-content/original/119622-abstract-white-background-graphic-design.jpg")no-repeat fixed center;
                background-size: 1400px 800px;
            }


        </style>


    </head>
    <body>
        <!------ Include the above in your HEAD tag ---------->




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
                        <li><a href="../Admin/management.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                                </svg> Product</a></li>
                        <li><a href="./user.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                </svg> User</a></li>
                        <li><a href="./bill.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M15 4H1v8h14V4zM1 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H1z"/>
                                <path d="M13 4a2 2 0 0 0 2 2V4h-2zM3 4a2 2 0 0 1-2 2V4h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 12a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
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
                            <%
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





        <%            if (request.getParameter("pId") != null) {
                int pId = Integer.parseInt(request.getParameter("pId"));
                ProductsDAO pDAO = new ProductsDAO();
                Products p = new Products();
                p = pDAO.getProducts(pId);
                int pStatus = p.getpStatus();
                int kq = 0;
                if (pStatus == 1) {
                    kq = pDAO.updateStatus(0, pId);
                } else {
                    kq = pDAO.updateStatus(1, pId);
                }

                if (kq != 0) {
                    out.print("<script>alert('Xoa thanh cong');</script>");
                } else {
                    out.print("<script>alert('Xoa that bai');</script>");
                }
                out.print("<script>location.href='management.jsp'</script>");

            }
        %>
        <!--        <table border="1" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Output price</th>
                            <th>Input price</th>
                            <th>Amount</th>
                            <th>Gender</th>
                            <th>Guarantee</th>
                            <th>Discount</th>
                            <th>Description</th>
                            <th>Date input</th>
                        </tr>
                    </thead>-->
        <div class="container">
            <div class="row">


                <div class="col-md-12">
                    <h4><marquee>Managament Product by Admin</marquee></h4>
                    <div class="table-responsive">
                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>

                                <!--<th><input type="checkbox" id="checkall" /></th>-->
                            <th>ID</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Output price</th>
                            <th>Input price</th>
                            <th>Amount</th>
                            <th>Gender</th>
                            <th>Guarantee</th>
                            <th>Discount</th>
                            <th>Description</th>
                            <th>Date input</th>
                            <th>Status</th>

                            <!--<th>Image</th>-->
                            <th>Update</th>
                            <th>Delete</th>

                            </thead>
                            <tbody>
                                <%
                                    ProductsDAO pDAO = new ProductsDAO();
                                    ResultSet rs = pDAO.getAllProducts();
                                    while (rs.next()) {
                                        out.print("<tr>");
                                        out.print("<td>" + rs.getInt("pId") + "</td>");
                                        out.print("<td><img src='../" + rs.getString("pImage") + "'></img></td>");
                                        out.print("<td>" + rs.getString("pName") + "</td>");
                                        out.print("<td>" + rs.getDouble("pBprices") + "</td>");
                                        out.print("<td>" + rs.getDouble("pIprices") + "</td>");
                                        out.print("<td>" + rs.getInt("pAmount") + "</td>");
                                        out.print("<td>" + rs.getString("pGender") + "</td>");
                                        out.print("<td>" + rs.getString("pGuarantee") + "</td>");
                                        out.print("<td>" + rs.getString("pDiscount") + "</td>");
                                        out.print("<td>" + rs.getString("pDescription") + "</td>");
                                        out.print("<td>" + rs.getDate("pDate") + "</td>");
                                        out.print("<td>" + rs.getInt("pStatus") + "</td>");
                                        out.print("<td><a class='text-danger' href='updateProducts.jsp?pId=" + rs.getInt("pId") + "'><i class='fas fa-edit'></i></a></td>");
                                        out.print("<td><a  href='?pId=" + rs.getInt("pId") + "'><i class='fas fa-trash'></i></a></td>");
                                        out.print("</tr>");
                                    }
                                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
%>
                                <!--            <img src="./Img/1.png" width="200px" alt="imgeas"/>-->
                            </tbody>
                        </table>

                        <button style="width: 100%"> <a class="btn_1 checkout_btn_1" href="./insertProduct.jsp" > <b>Insert products</b></a></button>

                    </div>





                    <div class="clearfix"></div>
                    <ul class="pagination pull-right">
                        <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
                    </ul>

                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input class="form-control " type="text" placeholder="Mohsin">
                    </div>
                    <div class="form-group">

                        <input class="form-control " type="text" placeholder="Irshad">
                    </div>
                    <div class="form-group">
                        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


                    </div>
                </div>
                <div class="modal-footer ">
                    <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
                </div>
            </div>
            <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
    </div>
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                </div>
                <div class="modal-body">

                    <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>

                </div>
                <div class="modal-footer ">
                    <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                </div>
            </div>
            <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
    </div>





</body>

</html>
