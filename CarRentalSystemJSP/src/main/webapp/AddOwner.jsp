<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
    <%@ page import="dao.OwnerDao"%>
    <%@ page import="beans.OwnerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Owner</title>
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
	
	<% 	out.println("<div class='container'>"); 
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		long mobile=Long.parseLong(smobile);
     %>
     <%
     OwnerBean bean=new OwnerBean(name, email, password, mobile);
     %>
     <%
     OwnerDao.save(bean);
		out.print("<h4>Owner added successfully</h4>");
	%>
		<jsp:include page="addownerform.html"></jsp:include>
		
		
		<% 
		out.println("</div>");
		%>
		
		<jsp:include page="footer.html"></jsp:include>
		
	<%	out.close(); } %>
     
</body>
</html>