package Fasade;
import BO.LoggedInUser;

public class Items {
	
	private LoggedInUser LU; 

	public Items() {
		
		LU = new LoggedInUser();
	}
	
	public int getUserItemE(Object email)
	{
		int nrOfE = 0;
		String ema = String.valueOf(email);
		System.out.println("ITMES = " + ema);
		//nrOfE = LU.getE(email);
		return 3;
	}
	
	public int getUserItemC()
	{
		return 67;
	}
	
	public int getUserItemP()
	{
		return 100;
	}

}
