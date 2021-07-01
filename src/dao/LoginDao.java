package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pojo.LoginPojo;
import utils.DBConnection;

public class LoginDao {
	private final Connection con;
	public LoginDao() {
		con=DBConnection.getConnection();
	}
	
	public boolean validate(LoginPojo lp)
	{
		boolean status = false;
		
		
		String sql = "select * from user where email = ? and password =?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, lp.getEmail());
		ps.setString(2, lp.getPassword());
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	
	// For SweetAlert
	public void alertSuccess(String message, PrintWriter out) {
		out.println("<!DOCTYPE html>"); 
		out.println("<html>"); 
		out.println("<head>");
		out.println("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>"); 
		out.println("</head>");
		out.println("<body>\r\n");
		out.println("<script type=\"text/javascript\">"); 
		out.println("swal(\"Success\", \""+message+"\", \"success\")"); 
		out.println(".then((value) => {"); 
		out.println("location='http://localhost:8080/Budget/index.jsp'"); 
		out.println("});");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>"); 
	}
	public void alertFail(String message, PrintWriter out) {
		out.println("<!DOCTYPE html>"); 
		out.println("<html>"); 
		out.println("<head>");
		out.println("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>"); 
		out.println("</head>");
		out.println("<body>\r\n");
		out.println("<script type=\"text/javascript\">"); 
		out.println("swal(\"Fail\",\""+message+"\", \"error\")"); 
		out.println(".then((value) => {"); 
		out.println("location='http://localhost:8080/Budget/login.jsp'"); 
		out.println("});");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>"); 
	}
	
}
