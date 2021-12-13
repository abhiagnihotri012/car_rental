<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.OwnerDao"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Section</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>
<body>
   
	
	
	
	<% 	
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(OwnerDao.authenticate(email, password)){
			session.setAttribute("user",email);
			
	%>
			<jsp:include page="navowner.html"></jsp:include>
			<jsp:include page="ownercarousel.html"></jsp:include>
	
			
	<%	}else{  
				session.invalidate();
	%>
		
			<jsp:include page="navhome.html"></jsp:include>
		<% 	out.println("<div class='container'>");
			out.println("<h3>Username or password error</h3>"); %>
			
			<jsp:include page="OwnerLogin.jsp"></jsp:include>
	<%		out.println("</div>");
		}
		
		%>
		<jsp:include page="footer.html"></jsp:include>
		
		
		
	

</body>
</html>