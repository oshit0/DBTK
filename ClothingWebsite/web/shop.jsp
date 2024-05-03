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
                <title>Shop</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shop.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
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
                <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
        </head>   
        <body>
                <%@include file="navbar.jsp" %>
                <%@include file="cart.jsp" %>
                <%@include file="login.jsp" %>

                <!--home-->
                <section class="home" id="home">
                        <div class="home-text">
                                <h1>PRODUCTS</h1>
                                <a href='#' class='btn'>View collection</a>
                        </div>   
                </section>

                <!--featured-->
                <section class='featured' id='featured'>
                        <div class='center-text'>
                                <h1>COLLECTIONS</h1>
                        </div>

                        <div class='featured-content'>
                                <div class='row'>
                                        <img src='img/mens.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Mens</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                                <div class='row'>
                                        <img src='img/image1.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Womens</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                                <div class='row'>
                                        <img src='img/image1.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Footwears</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                                <div class='row'>
                                        <img src='img/image1.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Accessories</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                                <div class='row'>
                                        <img src='img/image1.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Headwear</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                                <div class='row'>
                                        <img src='img/image1.jpg' style="width: 450px; height:400px;">
                                        <div class="fea-text">
                                                <h5>Stickers</h5>
                                        </div>
                                        <div class="arrow">
                                                <a href="#"><i class='bx bx-right-arrow-alt' ></i></a>
                                        </div>
                                </div>

                        </div>
                </section>

                <!--cta-->
                <section class="cta">
                        <div class="cta-text">
                                <h4>NEW ARRIVAL</h4>
                                <a href="#" class="btn">Shop Now</a>
                        </div>
                </section>

                <!--new-->
                <section class="new" id="new">
                        <div class="center-text">
                                <h2>New Arrivals</h2>
                        </div>
                        <div class="new-content">
                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>    

                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="img/image2.jpg">
                                        <h5>Spider Bading</h5>
                                        <h6>₱599</h6>
                                        <div class="sale">
                                                <h4>sale</h4>
                                        </div>
                                </div>           
                        </div>


                </section>

                <%@include file="footer.jsp"%>
        </body>
</html>
