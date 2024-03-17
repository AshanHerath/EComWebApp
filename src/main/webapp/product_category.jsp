<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/8/2024
  Time: 9:54 AM
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
    <title>Title</title>
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
                        <a href="#">Category</a>
                    </li>
                    <li><i class='fas fa-chevron-right' ></i></li>
                    <li>
                        <a class="active" href="#">Home</a>
                    </li>
                </ul>
            </div>
            <a href="new_category.jsp" class="btn-product">
                <i class="fas fa-plus" aria-hidden="true"></i>
                <span class="text">New Category</span>
            </a>
        </div>

        <div class="table-data">
            <div class="product">
                <div class="head">
                    <h3>Category List</h3>
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
                        <th>Category name</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>
                            <button class="btn-edit"><i class="fas fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fas fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>
                            <button class="btn-edit"><i class="fas fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fas fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <td>01</td>
                        <td>01-10-2021</td>
                        <td>01-10-2021</td>
                        <td>
                            <button class="btn-edit"><i class="fas fa-pencil" aria-hidden="true"></i></button>
                            <button class="btn-delete"><i class="fas fa-trash" aria-hidden="true"></i></button>
                        </td>
                    </tr>
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