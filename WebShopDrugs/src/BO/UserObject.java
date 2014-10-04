package BO;
import java.sql.SQLException;
import java.util.ArrayList;

import DB.NoSuchSQLLine;
import DB.SQLUser;

public class UserObject {

	private User user;
	private SQLUser SQLU;

	public UserObject() {

		System.out.println("new UserObject");	
		SQLU = new SQLUser();

	}

	public boolean Login(String email,String password)
	{

		if(SQLU.checkUser(email, password).equals("wrong input"))
		{
			return false;
		}
		else
		{
			//if login went well
			user = new User();
			user.setPassword(password);
			user.setEmail(email);
			
			//init users cart etc
			ArrayList<Integer> cart = new ArrayList<Integer>(); 
			try {
				cart = SQLU.getCartWithEmail(user.getEmail());
				if(cart!=null)
				{
					user.addDrugs(cart);
				}
				else
				{
					System.out.println("empty cart UO class");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//user.initCart();
			
			return true;
		}
	}

	public boolean Logout()
	{

		return true;
	}
	
	public ArrayList<Integer> getItems()
	{
		return user.getCart();
	}
	
	public boolean addDrugs(ArrayList<Integer> list) throws SQLException
	{
		user.addDrugs(list);
		String email = user.getEmail();
		System.out.println("email userObject = " + email);
		
		
		int E = list.get(0);
		int C = list.get(1);
		int P = list.get(2);
		
		//add them in database
		SQLU.addToCart(email,E,C,P);
		
		return true;
	}
	
	
	


}
