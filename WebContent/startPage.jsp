<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Fasade.*"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>web shop</title>
</head>
<body>

	<h5>already an addict</h5>
	<form name="main1" method="get" action="login.jsp">
		<input type="submit" name="ter" value="Login">
	</form>


	<h1>Sign up for an amazing ride</h1>
	<form name="main1" method="get" action="newUser.jsp">
		<input type="submit" name="ter" value="new user">
	</form>



	<h2>Get your high</h2>
	<img src="drugs.jpg" alt="Problem loading picture"
		style="width: 300px; height: 228px">


	<%
		String newN = request.getParameter("newusername");
		session.setAttribute("newusername", newN);
		String newP = request.getParameter("newpassword");
		session.setAttribute("newpassword", newP);

		//provide user interaction when trying to login
        session.setAttribute("message", "");
		session.setAttribute("already", "");

		//make sure we have pressed button for new user
		if (newN != null && newP != null) {
			
			
				try {
					Fasade.CreateUser U = new Fasade.CreateUser();
	                 String message = U.createUser(newN, newP);
	                		 
					 System.out.println("message back = " + message);
					 
					 if(message.equals("Wrong input"))
					 {
						 session.setAttribute("message", "Wrong input");
						 request.getRequestDispatcher("newUser.jsp").forward(
								request, response);
					 }
					 
					 if(message.equals("user already exists"))
					 {
						 session.setAttribute("message", "User already exists");
						 request.getRequestDispatcher("newUser.jsp").forward(
									request, response);
						
					 }
				
				

				} catch (com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException e) {
					session.setAttribute("already", "User already exists");
					request.getRequestDispatcher("newUser.jsp").forward(
							request, response);
				}

				
			}
		
	%>

</body>
</html>