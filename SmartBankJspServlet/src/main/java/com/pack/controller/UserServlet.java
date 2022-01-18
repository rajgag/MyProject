package com.pack.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.dao.UserDao;
import com.pack.models.UserModel;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDao userdao = new UserDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			delete(request, response, action);
			break;
		case "Delete":
			delete(request, response, action);
			break;
		case "Modify":
			update(request, response);
			break;
		case "changepass":
			changePassword(request,response);
		}
	}

	private void changePassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uid=request.getParameter("userid");
		UserModel usermodel=new UserModel();
		usermodel.setUserPassword(request.getParameter("password"));
		int i= userdao.change(uid,usermodel);
		if(i>0)
		{
			response.sendRedirect("user.jsp");
		}
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response, String action) throws IOException {

		int id, id1;
		String loginId, loginId1;

		if (action.equals("delete")) {
			id = Integer.parseInt(request.getParameter("CorporateId"));
			loginId = request.getParameter("UserLoginId");
			int i = userdao.delete(id, loginId);
			if (i > 0) {
				response.sendRedirect("delete_User.jsp");
			}
		} else if (action.equals("Delete")) {
			id1 = Integer.parseInt(request.getParameter("Cid"));
			loginId1 = request.getParameter("Userid");
			int j = userdao.delete(id1, loginId1);

			if (j > 0) {
				response.sendRedirect("list_User1.jsp");
			}

		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {

		UserModel userm = new UserModel();
		userm.setUserAdd(request.getParameter("UserAdd"));
		userm.setUserDept(request.getParameter("UserDept"));
		userm.setUserPhno(request.getParameter("UserPhno"));
		userm.setUserLoginId(request.getParameter("UserLoginId"));

		int i = userdao.update(userm);
		if (i > 0) {
			response.sendRedirect("userSetup.jsp");
		} else {

		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		UserModel userm = new UserModel();
		userm.setCorporateId((request.getParameter("CorporateId")));
		userm.setUserLoginId(request.getParameter("UserLoginId"));
		userm.setUserPassword(request.getParameter("UserPassword"));
		userm.setUserAdd(request.getParameter("UserAdd"));
		userm.setUserDept(request.getParameter("UserDept"));
		userm.setUserPhno(request.getParameter("UserPhno"));

		int i = userdao.save(userm);
		if (i > 0) {
			response.sendRedirect("userSetup.jsp");
		} else {

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
