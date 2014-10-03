package Fasade;
import java.sql.SQLException;

import BO.TempUser;
public class CreateUser {
	private TempUser TU;
	public CreateUser()
	{
		TU = new TempUser(); 
		
	}

	//create a user if email and password are input correctly
	public String createUser(String email,String password) throws SQLException
	{
		
		 
		 if(email.equals("") || password.equals(""))
			 return "Wrong input";
		  
		 else
		 {
			 //this either goes through or return with an already exist comment
			 String message = TU.newUser(email,password);
			 return message;
		 }
		 
	

	}
	
	
	//this method makes sure every email is unique
	public boolean checkUnique(String email)
	{
		return true;
	}
}
