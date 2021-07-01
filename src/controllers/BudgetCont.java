package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BudgetDao;
import pojo.BudgetPojo;

/**
 * Servlet implementation class BudgetCont
 */
@WebServlet("/BudgetCont")
public class BudgetCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BudgetCont() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String balance = request.getParameter("balance");
		
		BudgetPojo bp = new BudgetPojo(email,balance);
		bp.setBalance(balance);
	
		BudgetDao rd= new BudgetDao();
		String result = rd.update(bp);
		String result1 = rd.insert(bp);
		rd.alertSuccess("Done", response.getWriter());
		//response.sendRedirect("index.jsp");
	}

}
