<%-- 
    Document   : navbar
    Created on : 7 Apr 2024, 2:09:03 am
    Author     : Mark
--%>

<nav id="navbarHome" class="navbar fixed-top navbar-expand-lg">
        <div class="container-fluid px-5">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                <a id="logo" class="navbar-brand navbar-logosize bold-text text-white ms-auto" href="#">DBTK</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                        <a class="nav-link px- text-white" aria-current="page" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link px- text-white" aria-current="page" href="${pageContext.request.contextPath}/inventory">Shop</a>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link px- text-white" aria-current="page" href="#">Gallery</a>
                                </li>
                        </ul>
                        <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto ms-md-auto">
                                <li class="py-2 px-1 px-sm-1"><a class="" data-bs-toggle="modal" data-bs-target="#loginModal" href="#"><i class="nav-icons fa-solid fa-user"></i></a></li>
                                <li class="py-2 px-1 px-sm-1"><a class="" href="#sidebar" data-bs-toggle="offcanvas" role="button" aria-controls="sidebar"><i class="nav-icons fa-solid fa-cart-shopping "></i></a></li>
                        </ul>
                </div>        
        </div>
</nav>