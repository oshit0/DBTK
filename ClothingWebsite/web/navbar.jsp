<%-- 
    Document   : navbar
    Created on : 7 Apr 2024, 2:09:03 am
    Author     : Mark
--%>

<nav id="navbarHome" class="navbar fixed-top navbar-expand-lg">
  <div class="container-fluid px-5">
    <a id="logo" class="navbar-brand text-white" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	<li class="nav-item">
	  <a class="nav-link  px- text-white" aria-current="page" href="#">Home</a>
	</li>
	<li class="nav-item dropdown">
	  <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	    Shop
	  </a>
	  <ul class="dropdown-menu">
	    <li><a class="dropdown-item" href="#">Tees</a></li>
	    <li><a class="dropdown-item" href="#">Shorts</a></li>
	    <li><hr class="dropdown-divider"></li>
	    <li><a class="dropdown-item" href="#">Size Chart</a></li>
	  </ul>
	</li>
      </ul>

      <ul class="navbar-nav flex-row flex-wrap ms-md-auto">
	<li class="nav-item col-lg-auto">
	  <a  class="nav-link py-2 px-0 px-lg-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop" href="#">
	    <svg class="icons" xmlns="http://www.w3.org/2000/svg" height="20" width="17.5" fill="currentColor" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/></svg>
	  </a>
	</li>
	<li class="nav-item col-lg-auto">
	  <a class="nav-link py-2 px-0 px-lg-2" href="https://github.com/twbs" target="_blank" rel="noopener">
	    <svg class="icons" xmlns="http://www.w3.org/2000/svg" height="20" width="22.5" fill="currentColor" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"/></svg>
	  </a>
	</li>
      </ul>
    </div>
  </div>
</nav>