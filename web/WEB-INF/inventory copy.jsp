<%--
    Document   : Inventory
    Created on : 05 3, 23, 5:38:52 PM
    Author     : Mark
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Inventory</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.6/css/dataTables.bootstrap5.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/2.0.6/js/dataTables.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/2.0.6/js/dataTables.bootstrap5.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/data-tables.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/inventory.css">
                <link
                  rel="stylesheet"
                  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
                  integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
                  crossorigin="anonymous"
                  referrerpolicy="no-referrer"
                  />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
                <link rel="preconnect" href="https://rsms.me/">
                <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
        </head>
        <body>
                <%@include file="admin-navbar.jsp" %>

                <!-- DataTables -->
                <div class="container-fluid">
                        <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                                <div class="card mb-3">
                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                        <button class="nav-link text-dark active " id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Inventory</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                        <button class="nav-link text-dark" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Users</button>
                                                </li>
                                        </ul>

                                        <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                        <div class="card-body">
                                                                <div class="form-row">
                                                                        <h6>${message}</h6>
                                                                        <table id="inventoryTable" class="table table-striped" style="width:100%">
                                                                                <thead class="thead-dark">
                                                                                        <tr>
                                                                                                <th>Item Name</th>
                                                                                                <th>Item Description</th>
                                                                                                <th>Item Size</th>
                                                                                                <th>Item Price</th>
                                                                                                <th>Item Stocks</th>
                                                                                                <th>Actions</th>
                                                                                        </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                        <c:forEach items="${allItems}" var="item">
                                                                                                <tr>
                                                                                                        <td>${item.itemName}</td>
                                                                                                        <td>${item.itemDesc}</td>
                                                                                                        <td>${item.itemSize}</td>
                                                                                                        <td><fmt:formatNumber type="number" groupingUsed="true" value="${item.itemPrice}" /></td>
                                                                                                        <td>${item.itemStocks}</td>
                                                                                                        <td><a href="${pageContext.request.contextPath}/${path}?${query}${item.itemId}" name="actionButton">${actionTag}</a></td>
                                                                                                </tr>
                                                                                        </c:forEach>
                                                                                </tbody>
                                                                                <tfoot>
                                                                                </tfoot>
                                                                        </table>

                                                                        <div class="form-group col-md-4 text-center mb-3 ml-0 pl-0">
                                                                                <a href="${pageContext.request.contextPath}/inventory/create/form" class="btn btn-dark submit">Add Product</a>
                                                                                <a href="${pageContext.request.contextPath}/inventory/edit" class="btn btn-dark submit">Edit Product</a>
                                                                                <a href="${pageContext.request.contextPath}/inventory/delete" class="btn btn-danger submit" >Delete Product</a>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>

                                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                        <div class="card-body">
                                                                <div class="form-row">
                                                                        <table id="usersTable" class="table table-striped" style="width:100%">
                                                                                <thead class="thead-dark">
                                                                                        <tr>
                                                                                                <th>User Id</th>
                                                                                                <th>Password</th>
                                                                                                <th>First Name</th>
                                                                                                <th>Middle Name</th>
                                                                                                <th>Last Name</th>
                                                                                                <th>Complete Address</th>
                                                                                                <th>Birthday</th>
                                                                                                <th>Mobile Number</th>
                                                                                                <th>Account Status</th>
                                                                                                <th>Login Status</th>
                                                                                                <th>User Type</th>
                                                                                        </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                        <c:forEach items="${allItems}" var="item">
                                                                                                <tr>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                        <td></td>
                                                                                                </tr>
                                                                                        </c:forEach>
                                                                                </tbody>
                                                                                <tfoot>
                                                                                </tfoot>
                                                                        </table>
                                                                        <div class="form-group col-md-4 text-center mb-3 ml-0 pl-0">
                                                                                <a href="${pageContext.request.contextPath}/inventory/create/form" class="btn btn-dark submit">Add Product</a>
                                                                                <a href="${pageContext.request.contextPath}/inventory/edit" class="btn btn-dark submit">Edit Product</a>
                                                                                <a href="${pageContext.request.contextPath}/inventory/delete" class="btn btn-danger submit" >Delete Product</a>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </main>
                </div>
        </body>
        <script src="${pageContext.request.contextPath}/js/resetForm.js"></script>
</html>