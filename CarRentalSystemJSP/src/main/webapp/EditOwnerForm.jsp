<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.OwnerDao"%>
     <%@ page import="beans.OwnerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Owner Form</title>
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
			String sid=request.getParameter("id");		
			OwnerBean owner=OwnerDao.viewById(Integer.parseInt(sid));
		%>
		 
		 <form action='EditOwner.jsp' method='post' style='width:300px'>
		 
		 	<div class='form-group'>
		 		<input type='hidden' name='id' value='<%= owner.getId() %>'/>
		 		<label for='name1'>Name</label>
		 		<input type="text" class="form-control" value="<%= owner.getName() %>" name="name" id="name1" placeholder="Name"/>
		 	</div>
		 	
		 	<div class='form-group'>
		 		<label for='email1'>Email address</label>
		 		<input type='email' class='form-control' value='<%= owner.getEmail() %>'  name='email' id='email1' placeholder='Email'/>
		 	</div>
		 
		 	<div class='form-group'>
		 		<label for='password1'>Password</label>
		 		<input type='password' class='form-control' value='<%= owner.getPassword() %>'  name='password' id='password1' placeholder='Password'/>
		 	</div>
		 	
		 	<div class='form-group'>
				<label for='mobile1'>Mobile Number</label>
		 		<input type='number' class='form-control' value='<%= owner.getMobile() %>'  name='mobile' id='mobile1' placeholder='Mobile'/>
		 	</div>
		 
		 	<button type='submit' class='btn btn-primary'>Update</button>
		 
		 </form>
	</div>
		
	<jsp:include page="footer.html"></jsp:include>
		
<%} %>

	
</body>
</html>