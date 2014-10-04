<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Fasade.*"%>
<%Fasad fasad = null;%>
<%final CheckUser CU =  new CheckUser();%>
<HTML>
<BODY>


	<%
  //save login credentials
   String email = request.getParameter( "username" );
   session.setAttribute( "username", email );
   String pass = request.getParameter( "password" );
   session.setAttribute( "password", pass);
   
   
   
   fasad = (Fasad) session.getAttribute("fasad");
	 
   if(fasad.Login(email, pass)){
		   request.getRequestDispatcher("shop.jsp").forward(request, response);
	   }
	   
   else{
	   request.getRequestDispatcher("login.jsp").forward(
				request, response);
   }
   
   
   //temp user checks if name exists in DB or not
  //  System.out.println("returned " + CU.checkUser(email, pass));
 /*  String DB = CU.checkUser(email, pass);
   if(DB.equals("wrong input"))
    {
	   request.getRequestDispatcher("login.jsp").forward(
				request, response);
    }
    
    else
    {
    	//create a session object to CheckUser
    	session.setAttribute( "CheckUser", CU );
    	
    	//ref to a logged in user that has the ability to buy items. 
    	session.setAttribute( "loggedInEmail", DB );
    	request.getRequestDispatcher("shop.jsp").forward(request, response);
    	
    }*/
     
%>

</BODY>
</HTML>




