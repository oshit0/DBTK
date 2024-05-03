<%-- 
    Document   : Inventory
    Created on : 05 3, 23, 5:38:52 PM
    Author     : Mark
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Inventory</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.6/css/dataTables.bootstrap5.css">
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/2.0.6/js/dataTables.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/2.0.6/js/dataTables.bootstrap5.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/js/data-tables.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/inventory.css">
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

                <style>
                </style>
        </head>
        <body>
                <%@include file="admin-navbar.jsp" %>

                <!-- DataTables -->
                <div class="container-fluid">
                        <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                                <div class="card mb-3">
                                        <div class="card-body">
                                                <div class="form-row">
                                                        <table id="example" class="table table-striped" style="width:100%">
                                                                <thead class="thead-dark">
                                                                        <tr>
                                                                                <th>Item ID</th>
                                                                                <th>Item Name</th>
                                                                                <th>Item Description</th>
                                                                                <th>Item Price</th>
                                                                                <th>Item Stocks</th>
                                                                        </tr>
                                                                </thead>
                                                                <tbody>
                                                                        <tr>
                                                                                <td>#000001</td>
                                                                                <td>Shirt</td>
                                                                                <td>Blue Shirt</td>
                                                                                <td>$30</td>
                                                                                <td>30</td>
                                                                        <tr>
                                                                                <td>#837291</td>
                                                                                <td>Dress</td>
                                                                                <td>Red Dress</td>
                                                                                <td>$45</td>
                                                                                <td>25</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#629184</td>
                                                                                <td>Pants</td>
                                                                                <td>Black Pants</td>
                                                                                <td>$50</td>
                                                                                <td>40</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#315287</td>
                                                                                <td>Jacket</td>
                                                                                <td>Green Jacket</td>
                                                                                <td>$60</td>
                                                                                <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#912843</td>
                                                                                <td>Skirt</td>
                                                                                <td>Yellow Skirt</td>
                                                                                <td>$35</td>
                                                                                <td>22</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#572193</td>
                                                                                <td>T-shirt</td>
                                                                                <td>White T-shirt</td>
                                                                                <td>$20</td>
                                                                                <td>18</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#408751</td>
                                                                                <td>Sweater</td>
                                                                                <td>Gray Sweater</td>
                                                                                <td>$55</td>
                                                                                <td>37</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#739182</td>
                                                                                <td>Jeans</td>
                                                                                <td>Blue Jeans</td>
                                                                                <td>$40</td>
                                                                                <td>28</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#102738</td>
                                                                                <td>Blouse</td>
                                                                                <td>Pink Blouse</td>
                                                                                <td>$25</td>
                                                                                <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#651827</td>
                                                                                <td>Coat</td>
                                                                                <td>Brown Coat</td>
                                                                                <td>$70</td>
                                                                                <td>33</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#892341</td>
                                                                                <td>Suit</td>
                                                                                <td>Black Suit</td>
                                                                                <td>$100</td>
                                                                                <td>45</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#231984</td>
                                                                                <td>Shorts</td>
                                                                                <td>Orange Shorts</td>
                                                                                <td>$30</td>
                                                                                <td>19</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#874123</td>
                                                                                <td>Scarf</td>
                                                                                <td>Purple Scarf</td>
                                                                                <td>$15</td>
                                                                                <td>12</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#519273</td>
                                                                                <td>Hat</td>
                                                                                <td>Blue Hat</td>
                                                                                <td>$10</td>
                                                                                <td>7</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#982736</td>
                                                                                <td>Socks</td>
                                                                                <td>Black Socks</td>
                                                                                <td>$5</td>
                                                                                <td>3</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#376129</td>
                                                                                <td>Gloves</td>
                                                                                <td>White Gloves</td>
                                                                                <td>$8</td>
                                                                                <td>6</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#617284</td>
                                                                                <td>Shoes</td>
                                                                                <td>Brown Shoes</td>
                                                                                <td>$60</td>
                                                                                <td>42</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#429813</td>
                                                                                <td>Belt</td>
                                                                                <td>Black Belt</td>
                                                                                <td>$15</td>
                                                                                <td>11</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#738291</td>
                                                                                <td>Cap</td>
                                                                                <td>Green Cap</td>
                                                                                <td>$12</td>
                                                                                <td>9</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#182937</td>
                                                                                <td>Tie</td>
                                                                                <td>Red Tie</td>
                                                                                <td>$18</td>
                                                                                <td>14</td>
                                                                        </tr>
                                                                        <tr>
                                                                                <td>#921837</td>
                                                                                <td>Watch</td>
                                                                                <td>Silver Watch</td>
                                                                                <td>$80</td>
                                                                                <td>50</td>
                                                                        </tr>
                                                                </tbody>
                                                                <tfoot>
                                                                </tfoot>
                                                        </table>

                                                        <div class="form-group col-md-4 text-center mb-3 ml-0 pl-0">
                                                                <a href="${pageContext.request.contextPath}/inventory/create/form" class="btn btn-dark submit">Add Product</a>
                                                                <a href="${pageContext.request.contextPath}/inventory/edit/form" class="btn btn-dark submit">Edith Product</a>
                                                                <a href="${pageContext.request.contextPath}/inventory/delete/form" class="btn btn-danger submit">Delete Product</a>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </main>
                </div>
        </body>
</html>
