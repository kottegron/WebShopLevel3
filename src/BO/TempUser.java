package BO;

import java.sql.SQLException;

import DB.SQLUser;

public class TempUser {
	
private SQLUser SQLU;
		
	public TempUser()
	{
		SQLU = new SQLUser();

	}
	
	public void getItems()
	{
		
	}
	
	public void getPrice()
	{
		
	}
	
	public void getCart()
	{
		
	}
	
	public String newUser(String email,String password) throws SQLException
	{
			
			return SQLU.createUser(email, password);
				
	}
	
	public boolean checkUnique(String email)
	{
		return true;
	}
	
	public String checkUser(String email, String password)
	{
		
		return SQLU.checkUser(email, password);
		
	}
	
	

}
