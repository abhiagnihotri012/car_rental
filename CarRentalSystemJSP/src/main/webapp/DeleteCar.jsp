<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.CarDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Car</title>
</head>
<body>
         <% 
			if(session.getAttribute("user")==null){
				session.invalidate();
				response.sendRedirect("index.html");
			
		%>	
		  <%}else{ %>
       <%
       CarDao.delete(request.getParameter("callno"));
		
		response.sendRedirect("ViewCar.jsp");
       %>
       <%} %>
</body>
</html>