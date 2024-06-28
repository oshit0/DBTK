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
                <title>Don't Blame The Kids</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home-navbar.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cart.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
                <link
                  rel="stylesheet"
                  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
                  integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
                  crossorigin="anonymous"
                  referrerpolicy="no-referrer"
                  />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
                <link rel="preconnect" href="https://rsms.me/">
                <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
        </head>
        <body>
                <%@include file="home-navbar.jsp" %>
                <%@include file="cart.jsp" %>
                <%@include file="login.jsp" %>

                <!-- Carousell -->
                <div id="carouselExampleIndicators" class="carousel slide">
                        <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        </div>
                        <div class="carousel-inner">
                                <div class="carousel-item active">
                                        <img src="img/homepage/dbtk-1.jpg" class="carousell-img d-block w-100" alt="dbtk1">
                                </div>
                                <div class="carousel-item">
                                        <img src="img/homepage/dbtk-2.jpg" class="carousell-img d-block w-100" alt="dbtk2">
                                </div>
                                <div class="carousel-item">
                                        <img src="img/homepage/dbtk-3.jpg" class="carousell-img d-block w-100" alt="dbtk3">
                                </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                        </button>
                </div>

                <!-- Model Picture -->
                <div class="container-fluid model">
                        <div class="row">
                                <div class="col-md-6 col-sm-0 p-0 model-left img-fluid"  style="background-image: url('img/homepage/maloi_left.jpg');">
                                </div>
                                <div class="col-md-6 p-0">
                                        <img src="img/homepage/maloi_right.jpg" class="img-fluid" alt="maloi_right">
                                </div>
                        </div>
                </div>

                <!-- Gallery of Collaborations -->
                <div class="collections">
                        <div class="heading-collections">
                                <h2>Explore our Collections</h2>
                        </div>
                        <div class="container-fluid text-center px-4 py-4">
                                <div class="row justify-content-center ">
                                        <div class="col-lg-4 col-md-4 ">
                                                <img src="img/homepage/front_1.webp" class="img-fluid" alt="product">
                                                <p class="text-start">DBTK Endless Possibilities</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4 ">
                                                <img src="img/homepage/front_2.webp" class="img-fluid" alt="product">
                                                <p class="text-start">DBTK x H&M x GARAPATA</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4 ">
                                                <img src="img/homepage/front_3.webp" class="img-fluid" alt="product">
                                                <p class="text-start">DBTK Research & Development</p>
                                        </div>
                                </div>
                        </div>

                        <!-- <div class="container text-center w-100 py-md-5 px-sm-4 py-sm-3"> -->
                        <div class="container-fluid text-center w-100 px-4 pt-0">
                                <div class="row justify-content-center ">
                                        <div class="col-lg-4 col-md-4">
                                                <img src="img/homepage/front_4.webp" class="img-fluid" alt="product">
                                                <p class="text-start">DBTK Sporting Goods</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4 ">
                                                <img src="img/homepage/front_5.jpg" class="img-fluid"  alt="product">
                                                <p class="text-start">DBTK - Unbox Fest 2022</p>
                                        </div>
                                        <div class="col-lg-4 col-md-4 ">
                                                <img src="img/homepage/front_6.webp" class="img-fluid" alt="product">
                                                <p class="text-start">PICKUP COFFEE x DBTK</p>
                                        </div>
                                </div>
                        </div>
                </div>

                <!-- Brand Video -->
                <div class="container-fluid">
                        <div class="heading-video">
                                <h6>DBTK</h6>
                                <br>
                                <h1>Pure Collection</h1>
                        </div>
                        <div class="row">
                                <div class="col-12 p-0">
                                        <div class="video-container">
                                                <video autoplay muted loop disablePictureInPicture >
                                                        <source src="media/DBTKPureCollection.mp4" type="video/mp4">
                                                        Your browser does not support the video tag.
                                                </video>
                                        </div>
                                </div>
                        </div>
                </div>

                <br>

                <%@include file="footer.jsp"%>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/update-navbar.js">
                </script>
        </body>
</html>
