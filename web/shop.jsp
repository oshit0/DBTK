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
                <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
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
                <%@include file="navbar.jsp" %>
                <%@include file="cart.jsp" %>
                <%@include file="login.jsp" %>


                <!--cta-->
                <section class="cta" >
                        <div class="cta-text" ">
                                <h4>COLLECTION</h4>
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
                                        <img src="${pageContext.request.contextPath}/img/shop/shirt1.jpg">
                                        <h5>AUTO SALON TEE - BLACK</h5>
                                        <h6>₱950.00</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>    

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/bottom1.jpg">
                                        <h5>GAKURAN DRAWSTRING PANTS</h5>
                                        <h6>₱1,800</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/shirt3.jpg">
                                        <h5>SPARK INTERFACE TEE - BLACK</h5>
                                        <h6>₱900.00</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/accessories5.png">
                                        <h5>TSUNO BAG - CREAM</h5>
                                        <h6>₱1,500</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/shirt5.jpg">
                                        <h5>NIGHT RUN L/S TEE - BLACK</h5>
                                        <h6>₱1,100</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/accessories4.png">
                                        <h5>DBTK CROSSBODY BAG - BLACK</h5>
                                        <h6>1,125</h6>
                                        <div class="sale">
                                                <h4>Sale</h4>
                                        </div>
                                </div>           
                        </div>


                </section>

                <!-- shirt -->  
                <section class="shirt">
                        <div class="shirt-text">
                                <h1>T-shirt</h1>
                        </div>
                </section>

                <!---tshirts-->
                <section class="new" id="new">
                        <div>
                                <div class="new-product">
                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt1.jpg">
                                                <h5>AUTO SALON TEE - BLACK</h5>
                                                <h6>₱950.00</h6>           
                                        </div>    

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt2.jpg">
                                                <h5>AUTO SALON TEE - WHITE</h5>
                                                <h6>₱950.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt3.jpg">
                                                <h5>SPARK INTERFACE TEE - BLACK</h5>
                                                <h6>₱900.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt4.jpg">
                                                <h5>TUNERS TEE - DARK GRAY</h5>
                                                <h6>₱950.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt5.jpg">
                                                <h5>NIGHT RUN L/S TEE - BLACK</h5>
                                                <h6>₱1,100</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/shirt6.jpg">
                                                <h5>HEART PATCH TEE - NAVY BLUE</h5>
                                                <h6>₱900.00</h6>

                                        </div>           
                                </div>
                </section>

                <!-- new-accessories -->  
                <section class="accessories">
                        <div class="accessories-text">
                                <h1>Accessories</h1>
                        </div>
                </section>


                <!---accessories-->
                <section class="new" id="new">
                        <div>
                                <div class="new-product">
                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories1.png">
                                                <h5>DBTK “Cipher” Webbing key-strap</h5>
                                                <h6>₱650.00</h6>           
                                        </div>    

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories2.png">
                                                <h5>DBTK CIPHER KEYCHAIN</h5>
                                                <h6>₱150.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories3.png">
                                                <h5>DBTK SPARK KEYCHAIN</h5>
                                                <h6>₱1500.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories4.png">
                                                <h5>DBTK CROSSBODY BAG - BLACK</h5>
                                                <h6>₱1,125</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories5.png">
                                                <h5>TSUNO BAG - CREAM</h5>
                                                <h6>₱1,500</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/accessories6.png">
                                                <h5>KIDDO V2 ENAMEL PIN</h5>
                                                <h6>₱300.00</h6>

                                        </div>           
                                </div>


                </section>

                <!-- bottoms -->  
                <section class="bottoms">
                        <div class="bottoms-text">
                                <h1>Bottoms</h1>
                        </div>
                </section>

                <!---bottoms-->
                <section class="new" id="new">
                        <div>
                                <div class="new-product">
                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/bottom1.jpg">
                                                <h5>GAKURAN DRAWSTRING PANTS</h5>
                                                <h6>₱1,800</h6>           
                                        </div>    

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/bottom2.jpg">
                                                <h5>OG LOGO MINI SWEATPANTS - LIGHT BLUE</h5>
                                                <h6>₱750.00</h6>

                                        </div>           

                                </div>


                </section>

                <!-- wear -->  
                <section class="footwear">
                        <div class="footwear-text">
                                <h1>Footwear</h1>
                        </div>
                </section>

                <!---footwear-->
                <section class="new" id="new">
                        <div>
                                <div class="new-product">
                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/footwear1.png">
                                                <h5>DBTK Cipher 002 Slides - GRAY</h5>
                                                <h6>₱900.00</h6>           
                                        </div>    

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/footwear2.png">
                                                <h5>DBTK Cipher 002 Slides - BLUE</h5>
                                                <h6>₱900.00</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/footwear3.png">
                                                <h5>“SKY WALKER” SPARK</h5>
                                                <h6>₱5,495</h6>

                                        </div>           

                                </div>


                </section>

                <!-- head -->  
                <section class="headwear">
                        <div class="headwear-text">
                                <h1>Headwear</h1>
                        </div>
                </section>

                <!---headwear-->
                <section class="new" id="new">
                        <div>
                                <div class="new-product">
                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/headwear1.png">
                                                <h5>DBTK ITALIC DAD HAT - TAUPE/WHITE</h5>
                                                <h6>₱1,000</h6>           
                                        </div>    

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/headwear2.png">
                                                <h5>DBTK ITALIC DAD HAT - OLIVE GREEN/WHITE</h5>
                                                <h6>₱1,000</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/headwear3.png">
                                                <h5>DBTK ITALIC DAD HAT - SAGE GREEN/WHITE</h5>
                                                <h6>₱1,000</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/headwear4.png">
                                                <h5>DBTK ITALIC DAD HAT - BLACK/WHITE</h5>
                                                <h6>₱1,000</h6>

                                        </div>           

                                        <div class="box">
                                                <img src="${pageContext.request.contextPath}/img/shop/headwear5.png">
                                                <h5>PICKUP CREW CAP (OAT/GREEN)</h5>
                                                <h6>₱1,000</h6>

                                        </div>           


                                </div>


                </section>
                <!-- stickers -->  
                <section class="stickers">
                        <div class="stickers-text">
                                <h1>Stickers</h1>
                        </div>
                </section>

                <!---stickers-->
                <section class="new" id="new">
                        <div class="new-product">
                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker1.png">
                                        <h5>DBTK MADE WITH LOVE STICKER PACK</h5>
                                        <h6>₱300.00</h6>           
                                </div>    

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker2.png">
                                        <h5>Sneaky Kid Logo</h5>
                                        <h6>₱150.00</h6>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker3.png">
                                        <h5>DBTK HOLOGRAPHIC STICKER PACK</h5>
                                        <h6>₱300.00</h6>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker4.png">
                                        <h5>DBTKJPN “IKIGAI” STICKER PACK</h5>
                                        <h6>₱300.00</h6>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker5.png">
                                        <h5>DBTK AUTO SALON STICKER PACK</h5>
                                        <h6>₱250.00</h6>
                                </div>           

                                <div class="box">
                                        <img src="${pageContext.request.contextPath}/img/shop/sticker6.png">
                                        <h5>CIPHER HOLOGRAPHIC DECAL</h5>
                                        <h6>₱200.00</h6>
                                </div>           
                        </div>
                </section>

                <%@include file="footer.jsp"%>
        </body>
</html>
