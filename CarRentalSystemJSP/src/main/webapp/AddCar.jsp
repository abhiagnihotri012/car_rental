<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="dao.OwnerDao"  import="dao.CarDao" import="beans.CarBean"%>
      
      
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
        
        <jsp:include page="navowner.html"/>
		<jsp:useBean id="car" class="beans.CarBean"/>
		
		
		<%
        out.println("<div class='container'>");
		
		String callno=request.getParameter("callno");
		String carname=request.getParameter("carname");
		String company=request.getParameter("company");
		String condition=request.getParameter("condition");
		String squantity=request.getParameter("quantity");
		int quantity=Integer.parseInt(squantity);
		%>  
		
		<% CarBean bean=new CarBean(callno,carname,company,condition,quantity);
		
		int i=CarDao.save(bean);
		if(i>0){
			out.println("<h3>Car added successfully</h3>");
		}
		%>
		
		<jsp:include page="addcarform.html"></jsp:include>
		
	
		
		<jsp:include page="footer.html"></jsp:include>
		<% 
		out.close();
			}
		%>
		
		
		
</body>
</html>