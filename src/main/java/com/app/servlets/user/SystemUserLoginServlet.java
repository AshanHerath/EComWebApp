package com.app.servlets.user;

import com.app.controller.user.SystemUserController;
import com.app.dao.SystemUserDAO;
import com.app.dto.SystemUserDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class SystemUserLoginServlet extends HttpServlet {

    private final SystemUserController userController = new SystemUserController(new SystemUserDAO());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        SystemUserDTO userDTO = new SystemUserDTO();
        userDTO.setEmail(username);
        userDTO.setPassword(password);

        System.out.println(userDTO.toString());

        SystemUserDTO authenticatedUser = userController.authenticateUser(userDTO);

        if (authenticatedUser != null) {
            HttpSession session = request.getSession();
            session.setAttribute("authenticatedUser", authenticatedUser);

            response.sendRedirect("shop_dashboard.jsp");
            System.out.println("Successfully logged in");
        } else {
            System.out.println("Authentication failed");
        }
    }
}
