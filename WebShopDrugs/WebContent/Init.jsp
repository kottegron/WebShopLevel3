<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Fasade.*"%>
<%final Fasad fasad = new Fasad();%>
<% session.setAttribute( "fasad", fasad); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% request.getRequestDispatcher("startPage.jsp").forward(
									request, response);%>
</body>
</html>