<%-- 
    Document   : index
    Created on : 05 3, 23, 5:38:52 PM
    Author     : WANHEDA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Create Product</title>
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
        <body>
                <%@include file="admin-navbar.jsp" %>
                <!-- Update form -->
                <div class="container-fluid">
                        <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                                <div class="card mb-3">
                                        <div class="card-body">
                                                <div class="form-row">
                                                        <div class="form-group col-md-12 text-left mb-3">
                                                                <form method="POST" action="${pageContext.request.contextPath}/inventory/create">
                                                                        <div class="mb-1 row">
                                                                                <label for="itemName" class="col-sm-3 col-form-label">Item Name</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="itemName" name="itemName">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="itemDescription" class="col-sm-3 col-form-label">Item Description</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="itemDescription" name="itemDescription">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="itemPrice" class="col-sm-3 col-form-label">Item Price</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="itemPrice" name="itemPrice">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="itemStocks" class="col-sm-3 col-form-label">Item Stocks</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="itemStocks" name="itemStocks">
                                                                                </div>
                                                                        </div>
                                                                        <button type="submit" class="btn btn-dark submit" name="addItem">Save</button>
                                                                </form>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </main>
                </div>
        </body>
</html>
