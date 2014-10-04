package BO;

import java.util.ArrayList;

public class Cart {
	
	private int E;
	private int C;
	private int P;
		
	
	public Cart() {
		
		System.out.println("new Cart");
		E = 0;
		C = 0;
		P = 0;
	}
	
	public ArrayList<Integer> getCart()
	{
		ArrayList<Integer> cart = new ArrayList<Integer>(); 
		cart.add(E);
		cart.add((C));
		cart.add(P);
		
		return cart;
	}

	
	public int getE() {
		return E;
	}

	public void setE(int e) {
		E = E + e;
	}

	public int getC() {
		return C;
	}

	public void setC(int c) {
		C = C + c;
	}

	public int getP() {
		return P;
	}

	public void setP(int p) {
		P = P + p;
	}
	
	

	 
	

}
