<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Owner Form</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>
<body>
  	<% 
   		if(session.getAttribute("admin")==null){
			session.invalidate();
			response.sendRedirect("index.html");
		}else{
	%>	
  
    <jsp:include page="navadmin.html"></jsp:include>

	<% out.println("<div class='container'>"); %>
	
	
	<jsp:include page="addownerform.html"></jsp:include>
	
	
	<% out.close();out.println("</div>"); %>
	
	
	
	<jsp:include page="footer.html"></jsp:include>
	
	<%  out.close(); }%>
	
  
   
</body>
</html>