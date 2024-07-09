<%--
    Document   : login
    Created on : 5 Apr 2024, 3:20:06 am
    Author     : Mark
--%>

<!-- Modal -->
<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <button type="button" class="btn-close p-4" data-bs-dismiss="modal" aria-label="Close"></button>
            <div class="modal-body p-4 py-4 px-md-5">
                <h3 class="text-center mb-3 pb-40" id="exampleModalLabel">Login</h3>
                <h6 class="text-center">${loginMessage}</h6>
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
                    <div class="pt-3 w-100 text-center">
                        <a class="forgot" href="${pageContext.request.contextPath}/passwordreset/form">Forgot Password?</a>
                    </div>
                    <div class="p-4"></div>
                    <div class="modal-footer d-md-flex">
                        <div class="w-100 text-center">
                            Not a member yet? <a class="forgot" href="${pageContext.request.contextPath}/signup/form">Sign Up.</a>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js (required for dropdowns) -->
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