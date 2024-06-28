<%-- 
    Document   : footer
    Created on : 27 Apr 2024, 4:05:31 am
    Author     : Mark
--%>

<!-- Footer -->
<div class="container">
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-4 my-5 border-top">
                <div class="col-md-4 d-flex align-items-center">
                        <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                                <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
                        </a>
                        <span class="footer-logosize text-dark bold-text">DBTK</span>
                </div>

                <ul class="nav col-md-4 justify-content-center list-unstyled d-flex">
                        <li class="nav-item"><a href="${pageContext.request.contextPath}/" class="nav-link px-2 text-body-secondary">Home</a></li>
                        <li class="nav-item"><a href="${pageContext.request.contextPath}/shop" class="nav-link px-2 text-body-secondary">Shop</a></li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Gallery</a></li>
                </ul>

                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                        <li class="ms-3"><a class="text-dark" href="#"><i class="footer-icons fa-brands fa-facebook "></i></a></li>
                        <li class="ms-3"><a class="text-dark" href="#"><i class="footer-icons fa-brands fa-twitter "></i>     </a></li>
                        <li class="ms-3"><a class="text-dark" href="#"><i class="footer-icons fa-brands fa-instagram "></i></a></li>
                </ul>
        </footer>
</div>
