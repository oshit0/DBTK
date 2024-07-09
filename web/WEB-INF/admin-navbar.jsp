<!-- Admin Navbar -->
<nav id="navbarHome" class="navbar fixed-top bg-light navbar-expand-lg">
    <div class="container-fluid px-5">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a id="logo" class="navbar-brand navbar-logosize bold-text ms-auto"
            href="${pageContext.request.contextPath}/">DBTK</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto mb-2 mb-lg-0"></ul>
            <ul class="navbar-nav d-flex justify-content-between align-content-center ms-auto ms-md-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="nav-icons fa-solid fa-user"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/inventory">Inventory</a>
                        </li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/users_data">Users Data</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">${userId} - Sign Out</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>