package com.pack.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.dao.CorporateDao;
import com.pack.dao.MySqlConn;
import com.pack.models.CorporateModel;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CorporateDao cor = new CorporateDao();

	public ControllerServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		System.out.println(action);
		switch (action) {
		case "add":
			insert(request, response);
			break;
		case "update":
			update(request, response);
			break;
		case "delete":
			delete(request, response);
			break;
		case "Delete":
			delete(request, response);
			break;
		case "Modify":
			update(request, response);
			break;
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("CorporateName");// delete
		String id1 = request.getParameter("Cname");// delete from list

		int i = cor.delete(id);
		int j = cor.delete(id1);
		if (i > 0) {
			response.sendRedirect("delete_corporate.jsp");
		} else if (j > 0) {
			response.sendRedirect("list_Corporate.jsp");
		} else {

		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		CorporateModel cormodel = new CorporateModel();
		cormodel.setCorporateAddress(request.getParameter("CorporateAdd"));
		cormodel.setPhoneNumber(request.getParameter("CorporatePhno"));
		cormodel.setCorporateName(request.getParameter("CorporateName"));

		int i = cor.update(cormodel);
		if (i > 0) {
			response.sendRedirect("modify_Corporate.jsp");
		} else {

		}

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {

		CorporateModel cormodel = new CorporateModel();
		cormodel.setCorporateName(request.getParameter("CorporateName"));
		cormodel.setCorporateAddress(request.getParameter("CorporateAdd"));
		cormodel.setPhoneNumber(request.getParameter("CorporatePhno"));

		int i = cor.save(cormodel);

		if (i > 0) {
			response.sendRedirect("corporateSetup.jsp");
		} else {
			System.out.println("Error");
		}

	}
}
