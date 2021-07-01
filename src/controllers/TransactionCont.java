package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TransactionDao;
import pojo.CostPojo;
import pojo.TransactionPojo;

/**
 * Servlet implementation class DemoCont
 */
@WebServlet("/DemoCont")
public class TransactionCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public TransactionCont() {
        super();

    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String cost = request.getParameter("cost");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		String balance = request.getParameter("balance");
		
		TransactionPojo rp = new TransactionPojo(email,cost, category, description, date,balance);
		
		rp.setBalance(balance);
		
		TransactionDao rd= new TransactionDao();
		String result = rd.insert(rp);
		String result1 = rd.update(rp);
		rd.alertSuccess("Transaction Successfull", response.getWriter());
		//response.sendRedirect("login.jsp");
	}

}
