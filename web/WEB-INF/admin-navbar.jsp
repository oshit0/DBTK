<%-- 
    Document   : navbar
    Created on : 7 Apr 2024, 2:09:03 am
    Author     : Mark
--%>

<!-- Admin Navbar -->
<nav id="navbarHome" class="navbar fixed-top bg-light navbar-expand-lg">
        <div class="container-fluid px-5">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                <a id="logo" class="navbar-brand navbar-logosize bold-text ms-auto" href="${pageContext.request.contextPath}/">DBTK</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto mb-2 mb-lg-0">
                        </ul>
                        <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto ms-md-auto">
                                <li class="py-2 px-1 px-sm-1"><a class="" href="#"><i class="nav-icons fa-solid fa-user"></i></a> Admin</li>
                        </ul>
                </div>        
        </div>
</nav>