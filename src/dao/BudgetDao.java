package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.BudgetPojo;
import pojo.TransactionPojo;
import utils.DBConnection;

public class BudgetDao {
	private final Connection con;
	public BudgetDao() {
		con=DBConnection.getConnection();
	}

//add budget
	public String insert(BudgetPojo bp)
	{
		
		String result = "Data entered successfully";
		String sql = "insert into transaction (email,balance) values(?,?)";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, bp.getEmail());
		ps.setString(2, bp.getBalance());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
	
// Update Budget
	public String update(BudgetPojo bp)
	{
		
		String result = "Data entered successfully";
		String sql = "update transaction set balance=? where email=?";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, bp.getBalance());
		ps.setString(2, bp.getEmail());
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
				out.println("location='http://localhost:8080/Budget/mybudget.jsp'"); 
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
