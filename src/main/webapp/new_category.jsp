<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/8/2024
  Time: 10:13 AM
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
                <h1>Category</h1>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">New Category</a>
                    </li>
                    <li><i class='fas fa-chevron-right' ></i></li>
                    <li>
                        <a class="active" href="#">Home</a>
                    </li>
                </ul>
            </div>
        </div>

        <form method="post" action="">

            <div class="form-data">
                <div class="new-product">
                    <div class="head">
                        <h3>Add New Category</h3>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <label for="category_name" class="text-black">Category name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="category_name" name="category_name">
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-12">
                            <label for="category_description" class="text-black">Category description<span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="category_description" name="category_description">
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-3">
                            <button type="submit" class="btm btn-primary">Add Category</button>
                        </div>
                    </div>

                </div>
            </div>

        </form>

    </main>

</section>

</body>
</html>
<%
    } else {
        response.sendRedirect("shop_login.jsp");
    }
%>