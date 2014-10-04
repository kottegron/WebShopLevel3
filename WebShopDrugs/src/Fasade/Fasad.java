package Fasade;
import java.util.ArrayList;

import BO.*;
public class Fasad {
	private UserObject userObject;
	
	public Fasad() {	
		
		System.out.println("new fasad");
		userObject = new UserObject();
	}
	
	
	public boolean createUser()
	{
		return true;
	}
	
	public ArrayList<Integer> getItems()
	{
		return userObject.getItems();
	}
	
	//if purchase was successful return true
	public boolean buyItem()
	{
		System.out.println("buying shit");
		
	    return true;	
	}
	
	//this method should return a list Items ie Cart
	public void getCart()
	{
	   return;	
	}
	
	//is login correct???
	public boolean Login(String email, String pass)
	{
		if(userObject.Login(email, pass))	
			return true;
		else
			return false;
	}
	
	
	public boolean Logout()
	{
	    return true;	
	}
	
	public boolean addDrugs(ArrayList<Integer> list)
	{
		userObject.addDrugs(list);
		return true;
		
	}
	
	
	
	
	

}
