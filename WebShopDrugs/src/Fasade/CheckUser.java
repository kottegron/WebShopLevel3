package Fasade;
import BO.TempUser;

public class CheckUser {
	private TempUser TU;
	
	public CheckUser()
	{
		TU = new TempUser();
	}
			
	public String checkUser(String email, String password)
	{
		//return TU.checkUser(email, password);
		return TU.checkUser(email,password);
		
	}
	
	

}
