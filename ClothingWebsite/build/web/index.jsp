<%-- 
    Document   : index
    Created on : 1 Apr 2024, 7:53:21 pm
    Author     : Mark
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <title>JSP Page</title>
  </head>
  <body>
    <%@include file="navbar.jsp" %>

    <div id="carouselHomePage" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/dbtk-2.jpg" class="d-block w-100" alt="dbtk2">
        </div>
        <div class="carousel-item active">
          <img src="img/dbtk-3.jpg" class="d-block w-100" alt="dbtk3">
        </div>
        <div class="carousel-item active">
          <img src="img/dbtk-1.jpg" class="d-block w-100" alt="dbtk1">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselHomePage" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselHomePage" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

  <center>
    <br>
    <h1>All Products</h1>
    <div class="container text-center">
      <div class="row">
        <div class="col-md-3 col-sm-4">
          <img src="img/VARIANTS3.webp" class="img-fluid" alt="product">
          <p>Ggin Tee</p>
        </div>
        <div class="col-md-3 col-sm-4l">
          <img src="img/VARIANTS3.webp" class="img-fluid" alt="product">
          <p>Sreg Tee</p>
        </div>
        <div class="col-md-3 col-sm-4">
          <img src="img/VARIANTS3.webp" class="img-fluid" alt="product">
          <p>Ggin Tee</p>
        </div>
        <div class="col-md-3 col-sm-4">
          <img src="img/VARIANTS3.webp" class="img-fluid" alt="product">
          <p>Sreg Tee</p>
        </div>
      </div>
    </div>
  </center>

  <%@include file="access.jsp" %>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/update-navbar.js">
  </script>
</body>
</html>
