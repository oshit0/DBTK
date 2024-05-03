<%-- 
    Document   : Inventory
    Created on : 05 3, 23, 5:38:52 PM
    Author     : Mark
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Inventory</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/inventory.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
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
        <body style="">
                <%@include file="admin-navbar.jsp" %>

                <div class="container-fluid">
                        <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                                <div class="card mb-3">
                                        <div class="card-body">
                                                <div class="form-row">
                                                        <div class="form-group col-md-4 text-left mb-3">
                                                                <form>
                                                                        <div class="mb-1 row">
                                                                                <label for="productId" class="col-sm-3 col-form-label">Product ID</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="productName" class="col-sm-3 col-form-label">Product Name</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <div class="col-sm-3"></div>
                                                                                <div class="col-sm-9">
                                                                                        <button type="submit" class="btn btn-primary btn-sm">Search</button>
                                                                                </div>
                                                                        </div>
                                                                </form>
                                                        </div>
                                                        <hr/>
                                                        <table class="table table-sm">
                                                                <thead>
                                                                        <tr>
                                                                                <th scope="col">Item ID</th>
                                                                                <th scope="col">Item Name</th>
                                                                                <th scope="col">Item Description</th>
                                                                                <th scope="col">Price</th>
                                                                                <th scope="col">Stocks</th>
                                                                        </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${productList}" var="prod">
                                                                        <tr>
                                                                                <td>${prod.itemId}</td>
                                                                                <td>${prod.itemName}</td>
                                                                                <td>${prod.itemDescription}</td>
                                                                                <td>${prod.itemPrice}</td>
                                                                                <td>${prod.itemStocks}</td>
                                                                                <!--
                                                                                <td>
                                                                                    <a href="${pageContext.request.contextPath}/employee/update/form?employeeId=${prod.productId}" class="btn btn-sm btn-link">Edit</a>
                                                                                    <a href="${pageContext.request.contextPath}/employee/delete?employeeId=${prod.productId}" class="btn btn-sm btn-link">Delete</a>
                                                                                </td>
                                                                                -->
                                                                        </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                        </table>
                                                        <div class="form-group col-md-4 text-left mb-3">
                                                                <a href="${pageContext.request.contextPath}/inventory/create/form" class="btn btn-primary btn-sm">Add Product</a>
                                                                <a href="${pageContext.request.contextPath}/inventory/edit/form" class="btn btn-primary btn-sm">Edith Product</a>
                                                                <a href="${pageContext.request.contextPath}/inventory/delete/form" class="btn btn-primary btn-sm">Delete Product</a>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </main>
                </div>
        </body>
</html>
