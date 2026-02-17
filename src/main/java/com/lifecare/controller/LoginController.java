package com.lifecare.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.lifecare.model.AdminModel;

@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.sendRedirect("adminLogin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
        String u = request.getParameter("uname");
        String p = request.getParameter("pwd");

    
        AdminModel model = new AdminModel();
        int i = model.checkLogin(u, p);


        if (i != 0) {
            HttpSession session = request.getSession();
            session.setAttribute("USER", u); 
            response.sendRedirect("adminHome.jsp"); 
        } 
       
        else {
            RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
            request.setAttribute("msg", "Invalid User Name or Password");
            rd.forward(request, response);
        }
    }
}