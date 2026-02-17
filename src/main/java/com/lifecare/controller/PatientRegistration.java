package com.lifecare.controller;

import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
import com.lifecare.dto.Patient;
import com.lifecare.model.AdminModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registerCtrl")
public class PatientRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("pname");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String disease = request.getParameter("disease");
		String blood = request.getParameter("bgroup");
		String mobile = request.getParameter("mobile");

		Patient pt = new Patient(name, gender, age, disease, blood, mobile);

		AdminModel model = new AdminModel();
		int i = model.patientAdmit(pt);

		RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		if (i != 0) {
			request.setAttribute("msg", "Patient Admission Successful");
	} else {
			request.setAttribute("msg", "Patient Admission Failed");
		}
		rd.forward(request, response);
	}

}
