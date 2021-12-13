<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.CarDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Car</title>
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
	
	<%
	out.println("<div class='container'>");
	String callno=request.getParameter("callno");
	String scustomerid=request.getParameter("customerid");
	int customerid=Integer.parseInt(scustomerid);
	
	int i=CarDao.returnCar(callno,customerid);
	if(i>0){
		out.println("<h3>Car returned successfully</h3>");
	}else{
		out.println("<h3>Sorry, unable to return Car.</h3><p>We may have sortage of Cars. Kindly visit later.</p>");
	}
	out.println("</div>");
	%>
	 <jsp:include page="footer.html"></jsp:include>
	
<%	out.close(); }
    %>
</body>
</html>