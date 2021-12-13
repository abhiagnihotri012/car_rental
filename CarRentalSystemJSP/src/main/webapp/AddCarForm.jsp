<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car Form</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>

<body>

		<% 
			if(session.getAttribute("user")==null){
				session.invalidate();
				response.sendRedirect("index.html");
			}else{
		%>	

<jsp:include page="navowner.html"></jsp:include>

<% out.println("<div class='container'>");  %>


<jsp:include page="addcarform.html"></jsp:include>

<%  out.println("</div>"); %>

<%  out.close();  %>

<jsp:include page="footer.html"></jsp:include>
<%} %>

</body>
</html>