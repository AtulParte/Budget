package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import pojo.CostPojo;
import pojo.TransactionPojo;
import utils.DBConnection;

public class TransactionDao {
	private final Connection con;
	public TransactionDao() {
		con=DBConnection.getConnection();
	}
	
	
	public String insert(TransactionPojo rp)
	{
		
		String result = "Data entered successfully";
		String sql = "insert into transaction values(?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, rp.getEmail());
		ps.setString(2, rp.getCost());
		ps.setString(3, rp.getCategory());
		ps.setString(4, rp.getDescription());
		ps.setString(5, rp.getDate());
		ps.setString(6, rp.getBalance());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
	public String update(TransactionPojo rp)
	{
		
		String result = "Data entered successfully";
		String sql = "update transaction set balance=balance-? where email=?";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, rp.getBalance());
		ps.setString(1, rp.getCost());
		ps.setString(2, rp.getEmail());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
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
			out.println("location='http://localhost:8080/Budget/transaction.jsp'"); 
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
