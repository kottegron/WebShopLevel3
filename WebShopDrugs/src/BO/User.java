package BO;

import java.util.ArrayList;

public class User {
	
	private String email;
	private String password;
	private Cart cart;

	public User() {
		
		cart = new Cart();
		System.out.println("new User");
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ArrayList<Integer> getCart(){
	
		return cart.getCart();
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public boolean addDrugs(ArrayList<Integer> list)
	{
		cart.setE(list.get(0));
		cart.setC(list.get(1));
		cart.setP(list.get(2));
		return true;
	}

	
	
	
	
	

}
