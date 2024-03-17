<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/8/2024
  Time: 12:55 AM
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
            <a href="#">New Product</a>
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
              <h3>Add New Product</h3>
            </div>
            <div class="form-group row">
              <div class="col-md-12">
                <label for="product_name" class="text-black">Product name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="product_name" name="product_name">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-6">
                <label for="product_price" class="text-black">Product price<span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="product_price" name="product_price">
              </div>
              <div class="col-md-6">
                <label for="stock_quantity" class="text-black">Stock quantity <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="stock_quantity" name="stock_quantity">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="description" class="text-black">Description <span class="text-danger">*</span></label>
                <textarea class="form-control" id="description" name="description" rows="5"></textarea>
              </div>
            </div>

            <div class="form-group row mt-7">
              <div class="mb-3">
                <label for="formFile" class="form-label">Default file input example <span class="text-danger">*</span></label>
                <input class="form-control" type="file" id="formFile">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-3">
                <button type="submit" class="btm btn-primary">Add Product</button>
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