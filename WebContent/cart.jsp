<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Fasade.*"%>
<%final Items item = new Items();%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
<%
   String E = request.getParameter( "E" );
   session.setAttribute( "E", E );
   String C = request.getParameter( "C" );
   session.setAttribute( "C", C );
   String P = request.getParameter( "P" );
   session.setAttribute( "P", P );
  
   int EC = Integer.parseInt(E);
   int CO = Integer.parseInt(C);
   int PI = Integer.parseInt(P);
   
   EC = EC + item.getUserItemE(session.getAttribute("loggedInEmail"));
 
   //item.getUserItemE(session.getAttribute("loggedInEmail"));
   //EC = EC + item.getUserItemE();
   
  // CO = CO + item.getUserItemC();
  // PI = PI + item.getUserItemP();
  
   
   
%>

 <img src="cart.jpg" alt="Problem loading picture" style="width:300px;height:228px">

<p>
Ecstasy: <%= EC%>
</p>
<p>
Cocaine: <%= session.getAttribute( "C" ) %>
</p>
<p>
Pills: <%= session.getAttribute( "P" ) %>
</p>

</body>
</html>