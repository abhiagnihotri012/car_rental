<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.OwnerDao"%>
    <%@ page import="beans.OwnerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Owner</title>
</head>
<body>
	<% 
   		if(session.getAttribute("admin")==null){
			session.invalidate();
			response.sendRedirect("index.html");
		}else{
	%>	
     <div class='container'>
	
	<jsp:useBean id="owner" class="beans.OwnerBean"/>
    <jsp:setProperty property="*" name="owner"/>
	<%
		int status = OwnerDao.update(owner);
		if(status > 0){
			out.print("<h3>Record Updated Successfully!!</h3>");
			response.sendRedirect("ViewOwner.jsp");
	%> 

		<% }
		else {	
			%>
			
			<h3>Record Not Saved!!</h3>
			<jsp:include page="EditOwnerForm.jsp"></jsp:include>
		<% } }%>

	</div>

</body>
</html>