<%--
  Created by IntelliJ IDEA.
  User: as
  Date: 1/6/2024
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.app.dto.SystemUserDTO" %>

<html>
<head>
    <title>Welcome</title>
</head>
<body>

<%
    SystemUserDTO authenticatedUser = (SystemUserDTO) session.getAttribute("authenticatedUser");
    if (authenticatedUser != null) {
%>

<h1>Welcome, <%= authenticatedUser.getUsername() %>!</h1>
<h1>Welcome, <%= authenticatedUser.getUserID() %>!</h1>
<p>Email: <%= authenticatedUser.getEmail() %></p>
<p>Other details: <%= authenticatedUser.toString() %></p>

<%
} else {
    response.sendRedirect("shop_login.jsp");
%>

<p>Authentication failed. Please login again.</p>

<%
    }
%>

</body>
</html>
