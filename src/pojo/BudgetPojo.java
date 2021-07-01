package pojo;

public class BudgetPojo {
	private String email,balance;

	public BudgetPojo() {
		super();
	}

	public BudgetPojo(String email, String balance) {
		super();
		this.email = email;
		this.balance = balance;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "BudgetPojo [email=" + email + ", balance=" + balance + "]";
	}
	
	
	
	
}
