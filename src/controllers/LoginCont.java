package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import pojo.LoginPojo;

/**
 * Servlet implementation class LoginCont
 */
@WebServlet("/LoginCont")
public class LoginCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LoginCont() {
        super();      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginDao loginDao = new LoginDao();

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		LoginPojo lp = new LoginPojo();
		lp.setEmail(email);
		lp.setPassword(password);

		if (loginDao.validate(lp)) {
			loginDao.alertSuccess("Login Successfull", response.getWriter());
			//response.sendRedirect("index.jsp");

		} else {
			loginDao.alertFail("Incorrect Email or Password , Pls Enter Correct Details", response.getWriter());
			//response.sendRedirect("login.jsp");

		}
		
	}

}
