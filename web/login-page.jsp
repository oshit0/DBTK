<%--
    Document   : Login Page
    Created on : July 09 2024, 1:26:000000 pm
    Author     : Mark
    Design    : AHHHHHHHHH
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
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
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
                <div class="login-container">
                    <div class="login-img">
                    </div>
                    <div class="login-form">
                        <h1>Login</h1>
                        <h6 style="color: red;">${loginMessage}</h6>
                        <form id="loginForm" action="${pageContext.request.contextPath}/login" class="needs-validation" novalidate>
                            <div class="form-group mb-2">
                                <label for="userId" class="col-form-label">User ID</label>
                                <div class="input-group has-validation">
                                    <input type="text" class="form-control" id="userId" name="userId" required>
                                    <div class="invalid-feedback">
                                        Please enter your User ID.
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label for="password" class="col-form-label">Password</label>
                                <div class="input-group has-validation">
                                    <input type="password" class="form-control" id="password" name="password" required>
                                    <div class="invalid-feedback">
                                        Please enter your password.
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="d-grid gap-2 mx-auto">
                                <button type="submit" class="btn btn-dark rounded submit px-3" name="login">Log In</button>
                            </div>
                        </form>
                        <div class="my-3 w-100 text-center">
                            Forgot password? <a class="" href="${pageContext.request.contextPath}/passwordreset/form">reset here.</a>
                        </div>
                    </div>
                </div>
                <br>
                <%@include file="footer.jsp" %>

                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
                <script>
                    (() => {
                        'use strict'
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        const forms = document.querySelectorAll('.needs-validation')
                        // Loop over them and prevent submission
                        Array.from(forms).forEach(form => {
                            form.addEventListener('submit', event => {
                                if (!form.checkValidity()) {
                                    event.preventDefault()
                                    event.stopPropagation()
                                }
                                form.classList.add('was-validated')
                            }, false)
                        })
                    })()
                </script>
        </body>
</html>