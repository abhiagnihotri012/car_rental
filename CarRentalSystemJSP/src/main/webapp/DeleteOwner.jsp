<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.OwnerDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Owner</title>
</head>
<body> 
   <% 
   		if(session.getAttribute("admin")==null){
			session.invalidate();
			response.sendRedirect("index.html");
		}else{
	%>		

	<%
		int id=Integer.parseInt(request.getParameter("id"));
		
		OwnerDao.delete(id);
		response.sendRedirect("ViewOwner.jsp"); }
	 %>
</body>
</html>