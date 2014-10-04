<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Fasade.*"%>
<%@ page import="java.util.ArrayList" %>
<%Fasad fasad = null;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
<%
   fasad = (Fasad) session.getAttribute("fasad");
  

   String E = request.getParameter( "E" );
   session.setAttribute( "E", E );
   String C = request.getParameter( "C" );
   session.setAttribute( "C", C );
   String P = request.getParameter( "P" );
   session.setAttribute( "P", P );
  
   ArrayList<Integer> list = new ArrayList<Integer>();
   
   int EC = Integer.parseInt(E);
   int CO = Integer.parseInt(C);
   int PI = Integer.parseInt(P);
   list.add(EC);
   list.add(CO);
   list.add(PI);
   
   //add items to cart persistent
   fasad.addDrugs(list);
   

   //get cart so we can present it here
   list = fasad.getItems();
   
   EC = list.get(0);
   CO = list.get(1);
   PI = list.get(2);
  
   
   
%>

 <img src="cart.jpg" alt="Problem loading picture" style="width:300px;height:228px">

<p>
Ecstasy: <%= EC%>
</p>
<p>
Cocaine: <%= CO %>
</p>
<p>
Pills: <%= PI %>
</p>

</body>
</html>