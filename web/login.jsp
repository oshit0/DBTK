<%-- 
    Document   : login
    Created on : 5 Apr 2024, 3:20:06 am
    Author     : Mark
--%>

<!-- Modal -->
<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                        <button type="button" class="btn-close p-4 " data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="modal-body p-4 py-4 px-md-5">
                                <h3 class="text-center mb-3 pb-40" id="exampleModalLabel">Login</h3>
                                <form action="${pageContext.request.contextPath}/inventory" class="login-form">
                                        <div class="form-group mb-2">
                                                <label for="username" class="col-form-label">Username</label>
                                                <input type="text" class="form-control" id="usernameLogin">
                                        </div>
                                        <div class="form-group mb-2">
                                                <label for="passwrd" class="col-form-label">Password</label>
                                                <input type="password" class="form-control" id="passwrdLogin">
                                        </div>
                                        <br>
                                        <div>
                                                <button type="submit" class="form-control btn btn-dark rounded submit px-3" >Log In</button>
                                        </div>
                                        <div class="p-4">
                                        </div>
                                        <div class="modal-footer d-md-flex">
                                                <div class="w-100 text-center">
                                                        Not a member yet? <a class="forgot" href="${pageContext.request.contextPath}/signup">Sign Up.</a>
                                                </div>
                                        </div>
                                </form>
                        </div>
                </div>
        </div>
</div>
