package com.lifecare.controller;

import java.io.IOException;
import java.util.ArrayList;


import com.lifecare.dto.Patient;
import com.lifecare.model.AdminModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/details")
public class PatientDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminModel model = new AdminModel();
		ArrayList<Patient> list = model.getAllPatients();
		
		RequestDispatcher rd = request.getRequestDispatcher("details.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
		
		
	}
}
