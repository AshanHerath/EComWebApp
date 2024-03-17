<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/7/2024
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/shop.css">
</head>
<body>
<section id="sidebar" class="sidebar">
    <a href="#" class="brand text-center">
        <span class="text">Tech Heaven</span>
    </a>
    <ul class="side-menu top">
        <li class="active">
            <a href="shop_dashboard.jsp">
                <i class="fa fa-chart-pie"></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="shop_product.jsp">
                <i class="fa fa-shopping-bag"></i>
                <span class="text">Product</span>
            </a>
        </li>
        <li>
            <a href="product_category.jsp">
                <i class="fa fa-comments"></i>
                <span class="text">Category</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-comments"></i>
                <span class="text">Orders</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-users"></i>
                <span class="text">Inventory</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-users"></i>
                <span class="text">Analytics</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-users"></i>
                <span class="text">Employee</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-users"></i>
                <span class="text">Users</span>
            </a>
        </li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="#">
                <i class="fa fa-cog"></i>
                <span class="text">Settings</span>
            </a>
        </li>
        <li>
            <a href="#" class="logout">
                <i class="fa fa-sign-out-alt"></i>
                <span class="text">Logout</span>
            </a>
        </li>
    </ul>
</section>


</body>
</html>