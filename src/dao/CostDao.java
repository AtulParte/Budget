package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.CostPojo;
import utils.DBConnection;

public class CostDao {
	private final Connection con;
	public CostDao() {
		con=DBConnection.getConnection();
	}
	
// Update Budget
	public String update(CostPojo bp)
	{
		
		String result = "Data entered successfully";
		String sql = "update cost set balance=balance-? where email=?";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, bp.getBalance());
		ps.setString(1, bp.getCost());
		ps.setString(2, bp.getEmail());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
	
}
