<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Section</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>
<body>
     
     
 	
	<% 	
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(email.equals("admin@admin.com")&&password.equals("admin123")){
			session.setAttribute("admin", email);
	%>		
			<jsp:include page="navadmin.html"></jsp:include>
			<jsp:include page="admincarousel.html"></jsp:include>
	<% 		
	 } 
		else{ 
			session.invalidate();
	%>	
			
			<jsp:include page="navhome.html"></jsp:include>
			
			
			<%  
			out.println("<div class='container'>");
			out.println("<h3>Username or password error</h3>");
			%>
			
			<jsp:include page="adminloginform.html"></jsp:include>
			
		<%
		out.println("</div>"); 
		     }
		%>	
			
		
		<jsp:include page="footer.html"></jsp:include>
		
	 																																										
     
</body>
</html>