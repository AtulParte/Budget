package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import pojo.RegisterPojo;
import utils.DBConnection;

public class RegisterDao {
	private final Connection con;
	public RegisterDao() {
		con=DBConnection.getConnection();
	}
	
	
	public boolean insert(RegisterPojo rp)
	{
		if(con==null)return false;
		String result = "Data entered successfully";
		String sql = "insert into user values(?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, rp.getName());
		ps.setString(2, rp.getEmail());
		ps.setString(3, rp.getPhone());
		ps.setString(4, rp.getPassword());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return false;
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
			out.println("location='http://localhost:8080/Budget/login.jsp'"); 
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
			out.println("location='http://localhost:8080/Budget/register.jsp'"); 
			out.println("});");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>"); 
		}
		
}
