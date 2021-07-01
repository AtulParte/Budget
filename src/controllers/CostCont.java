package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CostDao;
import pojo.CostPojo;

/**
 * Servlet implementation class CostCont
 */
@WebServlet("/CostCont")
public class CostCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CostCont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String cost = request.getParameter("cost");
		String balance = request.getParameter("balance");
		
		CostPojo bp = new CostPojo(email,cost,balance);
		bp.setBalance(balance);
	
		CostDao rd= new CostDao();
		String result = rd.update(bp);
		response.sendRedirect("index.jsp");
	}

}
