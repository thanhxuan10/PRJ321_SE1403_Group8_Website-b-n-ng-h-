<%-- 
    Document   : bill
    Created on : Jul 9, 2020, 3:43:43 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->
        <!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->

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
         <%            if (request.getParameter("bId") != null) {
                int bId = Integer.parseInt(request.getParameter("bId"));
                BillDAO bDAO = new BillDAO();
                int kq = bDAO.updateStatus(bId);
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
                                </svg></i> Admin</a></li>
                        <li><a href="./user.jsp"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                </svg> User</a></li>



                    </ul>
                    <div class="pull-right">
                        <ul class="nav pull-right">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome to page Bill</a>
                                <!--                        <ul class="dropdown-menu">
                                                            <li><a href="/user/preferences"><i class="icon-cog"></i> Preferences</a></li>
                                                            <li><a href="https://mail.google.com/mail/u/0/#inbox"><i class="icon-envelope"></i> Contact Support</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="../webwatch/login.jsp"><i class="icon-off"></i> Logout</a></li>
                                                        </ul>-->
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
                <%
                    BillDAO pDAO = new BillDAO();
                    ResultSet rs = pDAO.getAllBill();
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

                        out.print("<td><a href='updateBill.jsp?bId=" + rs.getInt("bId") + "'>Update</a></td>");
                        out.print("<td><a href='?bId=" + rs.getInt("bId") + "'>Delete</a></td>");
                        out.print("<td><a href='detailBill.jsp?bId=" + rs.getInt("bId") + "'>Bill detail</a></td>");
                        out.print("</tr>");
                    }
                    //out.print("<td><a href='insertProduct.jsp>Insert</a></td>");
                %>

            </tbody>
        </table>
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
