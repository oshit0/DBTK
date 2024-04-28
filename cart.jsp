<%-- 
    Document   : cart
    Created on : 7 Apr 2024, 11:26:26 pm
    Author     : Elthan
--%>
<div class="offcanvas offcanvas-end" tabindex="-1" id="sidebar" aria-labelledby="sidebar-label">
        <div class="offcanvas-header">
                <h5 id="cartOffcanvasLabel">Shopping Cart</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" ></button>
        </div>
        <div class="offcanvas-body">
                <!-- Cart Content -->
                <div class="cart-item">
                        <img src="img/homepage/VARIANTS3.webp" alt="Product Image">
                        <div>
                                <h6>Product Name: ABC</h6>
                                <p>Price: $10</p>
                        </div>
                        <form class="d-flex align-items-center ms-auto">
                                <label for="quantity1" class="me-2">Quantity:</label>
                                <input type="number" id="quantity1" name="quantity1" class="form-control quantity-input" value="1" min="1">
                        </form>
                </div>
                <div class="cart-item">
                        <img src="img/homepage/VARIANTS3.webp" alt="Product Image">
                        <div>
                                <h6>Product Name: XYZ</h6>
                                <p>Price: $15</p>
                        </div>
                        <form class="d-flex align-items-center ms-auto">
                                <label for="quantity2" class="me-2">Quantity:</label>
                                <input type="number" id="quantity2" name="quantity2" class="form-control quantity-input" value="1" min="1">
                        </form>
                </div>
                <!-- Additional Cart Items -->
        </div>

        <!-- Checkout Button (Fixed at bottom) -->
        <div class="sticky-checkout">
                <button class="form-control btn btn-dark m-3">Checkout</button>
        </div>
</div>
