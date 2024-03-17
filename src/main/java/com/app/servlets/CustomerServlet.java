package com.app.servlets;

import com.app.controller.CustomerController;
import com.app.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/save")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String customerId = req.getParameter("id");
        String customerName = req.getParameter("name");
        String customerAddress = req.getParameter("address");
        String customerSalary = req.getParameter("salary");

//        Customer customer = new Customer(Long.parseLong(customerId), customerName, customerAddress, Double.parseDouble(customerSalary));
//        System.out.println(customer);
//        if (new CustomerController().saveCustomer(customer)){
//            System.out.println("saveCustomer");
//            resp.sendRedirect("new_customer.jsp");
//        }else {
//            System.out.println("error");
//        }
    }
}
