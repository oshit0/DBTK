
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
                <title>Create User</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/users.css">
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
                                                                <form method="post" action="${pageContext.request.contextPath}/user/create" id="form">
                                                                        <div class="mb-1 row">
                                                                                <label for="userId" class="col-sm-3 col-form-label">User ID</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="userId" name="userId">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="password" class="col-sm-3 col-form-label">Password</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="password" class="form-control form-control-sm" id="password" name="password">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="firstName" class="col-sm-3 col-form-label">First Name</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="firstName" name="firstName">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="middleName" class="col-sm-3 col-form-label">Middle Name</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="middleName" name="middleName" placeholder="Optional">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="lastName" class="col-sm-3 col-form-label">Last Name</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="lastName" name="lastName">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="completeAddress" class="col-sm-3 col-form-label">Complete Address</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="completeAddress" name="completeAddress">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="birthday" class="col-sm-3 col-form-label">Birthday</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="date" class="form-control form-control-sm" id="birthday" name="birthday">
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="mobileNumber" class="col-sm-3 col-form-label">Mobile Number</label>
                                                                                <div class="col-sm-9">
                                                                                        <input type="text" class="form-control form-control-sm" id="mobileNumber" name="mobileNumber" placeholder="+63">
                                                                                </div>
                                                                        </div>
                                                                        <div class="form-group mb-1 row">
                                                                                <label for="accountStatus" class="col-sm-3 col-form-label">Account Status</label>
                                                                                <div class="col-sm-9">
                                                                                        <select class="form-select form-select-sm" id="accountStatus" name="accountStatus">
                                                                                                <option>Valid</option>
                                                                                                <option>Invalid</option>
                                                                                        </select>
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="loginStatus" class="col-sm-3 col-form-label">Login Status</label>
                                                                                <div class="col-sm-9">
                                                                                        <select class="form-select form-select-sm" id="loginStatus" name="loginStatus">
                                                                                                <option>Offline</option>
                                                                                                <option>Online</option>
                                                                                        </select>
                                                                                </div>
                                                                        </div>
                                                                        <div class="mb-1 row">
                                                                                <label for="userType" class="col-sm-3 col-form-label">User Type</label>
                                                                                <div class="col-sm-9">
                                                                                        <select class="form-select form-select-sm" id="userType" name="userType">
                                                                                                <option>Customer</option>
                                                                                                <option>Administrator</option>
                                                                                        </select>
                                                                                </div>
                                                                        </div>
                                                                        <button type="submit" class="btn btn-dark submit" name="addUser">Save</button>
                                                                </form>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </main>
                </div>
        </body>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/reset-form.js"></script>
</html>
