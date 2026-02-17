package com.lifecare.controller;

import java.io.IOException;
import java.util.ArrayList;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import com.lifecare.dto.Patient;
import com.lifecare.model.AdminModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteCtrl")
public class DeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		AdminModel model = new AdminModel();
		int i = model.deleteRecord(id);
		ArrayList<Patient> list = model.getAllPatients();

		RequestDispatcher rd = request.getRequestDispatcher("details.jsp");
		if (i != 0) {
			request.setAttribute("msg", "Record Deleted Success");
			request.setAttribute("LIST", list);
		} else {
			request.setAttribute("msg", "Record Not Delete");
			request.setAttribute("LIST", list);
		}
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
