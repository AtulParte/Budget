package pojo;

public class CostPojo {
	private String email,cost,balance;

	public CostPojo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CostPojo(String email, String cost, String balance) {
		super();
		this.email = email;
		this.cost = cost;
		this.balance = balance;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}
	
	

}
