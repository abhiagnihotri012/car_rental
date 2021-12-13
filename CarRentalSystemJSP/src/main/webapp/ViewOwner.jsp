<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.OwnerDao"%>
    <%@ page import="beans.OwnerBean"%>  
    <%@ page import="java.util.List"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>View Owner</title>   
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
	<div class='container'>

	<%
		List<OwnerBean> owners=OwnerDao.view();
		request.setAttribute("owners", owners);
	%>

	<table border=2 class="table">
	<thead style='background-color:black; color:white;' >
		<tr>
		    <th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Mobile</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${owners}" var="owner">
			<tr>
				<td>${owner.getId()}</td>
				<td>${owner.getName()}</td>
				<td>${owner.getEmail()}</td>
				<td>${owner.getPassword()}</td>
				<td>${owner.getMobile()}</td>
				<td><a href="EditOwnerForm.jsp?id=${owner.getId()}">EDIT</a></td>
				<td><a href="DeleteOwner.jsp?id=${owner.getId()}">DELETE</a></td>
			</tr>
		</c:forEach>


	</tbody>
</table>
</div>

<jsp:include page="footer.html"></jsp:include>

	<%} %>
	
   
</body>
</html>