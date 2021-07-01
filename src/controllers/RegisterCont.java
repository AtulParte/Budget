package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDao;
import pojo.RegisterPojo;

/**
 * Servlet implementation class RegisterCont
 */
@WebServlet("/RegisterCont")
public class RegisterCont extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterCont() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		RegisterPojo rp = new RegisterPojo(name, email, phone, password);
		
		RegisterDao rd= new RegisterDao();
		boolean result = rd.insert(rp);
		if (result) {
			rd.alertSuccess("Registration Successfull", response.getWriter());
			//response.sendRedirect("index.jsp");

		} else {
			rd.alertSuccess("Registration Successfull", response.getWriter());
			//response.sendRedirect("login.jsp");

		}
		//response.sendRedirect("login.jsp");
	}

}
