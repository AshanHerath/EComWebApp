<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/7/2024
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.app.dto.SystemUserDTO" %>
<%
    SystemUserDTO authenticatedUser = (SystemUserDTO) session.getAttribute("authenticatedUser");
    if (authenticatedUser != null) {
%>
<html>
<head>
    <title>Tech Heaven Shop</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/shop.css">
</head>
<body>
<%@include file="side-menu.jsp"%>

<section id="content" class="content">
    <nav>
        <div class="header-left">
            <h2><span>Hello, </span><%= authenticatedUser.getUsername() %></h2>
        </div>
        <a href="#" class="notification">
            <i class="fas fa-bell"></i>
            <span class="num">8</span>
        </a>
        <a href="#" class="profile">
            <img src="#">
        </a>
    </nav>

    <main>
        <div class="head-title">
            <div class="left">
                <h1>Product</h1>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">Product</a>
                    </li>
                    <li><i class='fas fa-chevron-right' ></i></li>
                    <li>
                        <a class="active" href="#">Home</a>
                    </li>
                </ul>
            </div>
            <a href="new_product.jsp" class="btn-product">
                <i class="fas fa-plus" aria-hidden="true"></i>
                <span class="text">New Product</span>
            </a>
        </div>

        <div class="table-data">
            <div class="product">
                <div class="head">
                    <h3>Product List</h3>
                    <form action="#">
                        <div class="form-input">
                            <input type="search" placeholder="Search...">
                            <button type="submit" class="search-btn"><i class='fa fa-search' ></i></button>
                        </div>
                    </form>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>#Id</th>
                        <th>Product Name</th>
                        <th>Description</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td><span class="status completed">Completed</span></td>
                        <td>
                            <button class="btn-edit"><i class="fas fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-view"><i class="fas fa-eye" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fas fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td><span class="status completed">Completed</span></td>
                        <td>
                            <button class="btn-edit"><i class="fa fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-view"><i class="fa fa-eye" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fa fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td><span class="status completed">Completed</span></td>
                        <td>
                            <button class="btn-edit"><i class="fas fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-view"><i class="fas fa-eye" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fa fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main>

</section>

</body>
</html>
<%
    } else {
        response.sendRedirect("shop_login.jsp");
    }
%>