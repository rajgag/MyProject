package com.pack.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.dao.AccountDao;
import com.pack.models.AccountModel;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AccountDao accdao=new AccountDao();

    
    public AccountServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
			delete(request, response,action);
			break;
		case "Close":
			delete(request, response,action);
			break;	
	}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response,String action) throws IOException {
		int id, id1;
		String loginId, loginId1;

		if (action.equals("Close")) {
			id = Integer.parseInt(request.getParameter("accCid"));
			loginId = request.getParameter("accName");
			int i = accdao.delete(id, loginId);
			if (i > 0) {
				response.sendRedirect("accountSetup.jsp");
			}
		} else if (action.equals("Delete")) {
			id1 = Integer.parseInt(request.getParameter("Cid"));
			loginId1 = request.getParameter("Userid");
			int j = accdao.delete(id1, loginId1);

			if (j > 0) {
				response.sendRedirect("list_User1.jsp");
			}

		}
		
	}


	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		AccountModel accmodel=new AccountModel();
		accmodel.setCorporateId(request.getParameter("CorporateId"));
		accmodel.setAccountNo(request.getParameter("AccountNo"));
		accmodel.setAccountName(request.getParameter("AccountName"));
		accmodel.setBranch(request.getParameter("AccountBranch"));
		accmodel.setCurrency(request.getParameter("Currency"));
		accmodel.setAvailableBalance(Double.parseDouble(request.getParameter("AvailableBalance")));
		
		int i=accdao.save(accmodel);
		if(i>0)
		{
			response.sendRedirect("accountSetup.jsp");
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
