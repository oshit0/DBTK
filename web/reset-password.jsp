<%--
    Document   : index
    Created on : 26 Apr 2024, 5:37:40 pm
    Author     : Mark
    Design    : Based from Sir. Rhyan's Suggestion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset-password.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cart.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
            integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="preconnect" href="https://rsms.me/">
        <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
        <title>JSP Page</title>
    </head>

    <body>
        <%@include file="navbar.jsp" %>
        <%@include file="login-modal.jsp" %>
            <div class="reset-container">
                <div class="reset-form">
                    <h1>Reset Password</h1>
                    <h6 style="color: red;">${loginMessage}</h6>
                    <form method="post" id="resetForm" action="${pageContext.request.contextPath}/passwordreset">
                        <label>User Id</label>
                        <input type="text" class="name" id="username" name="userId" placeholder="">
                        <span id="username_error"></span>
                        <label>Password</label>
                        <input type="password" id="newPassword" name="newPassword" placeholder="">
                        <span id="password_error"></span>
                        <label> Confirm Password</label>
                        <input type="password" id="confirm" placeholder="">
                        <span id="confirm_error"></span>
                        <button class="btn submit btn-dark btn-round" name="submitReset">Submit</button>
                    </form>
                </div>
                <div class="reset-img">
                </div>
            </div>
            <br>
            <%@include file="footer.jsp" %>
            <script src="${pageContext.request.contextPath}/js/reset-password.js" type="text/javascript"></script>
    </body>
</html>