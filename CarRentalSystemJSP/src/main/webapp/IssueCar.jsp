<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="beans.IssueCarBean"%>
    <%@ page import="dao.CarDao"%>
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
	
	<% 
	out.println("<div class='container'>");
	String callno=request.getParameter("callno");
	String customerid=request.getParameter("customerid");
	String customername=request.getParameter("customername");
	String scustomermobile=request.getParameter("customermobile");
	long studentmobile=Long.parseLong(scustomermobile);
%>

	
  <%
  IssueCarBean bean=new IssueCarBean(callno,customerid,customername,studentmobile); 
  %>
  
<%   
	int i=CarDao.issueCar(bean);
	if(i>0){
		out.println("<h3>Car issued successfully</h3>");
	}else{
		out.println("<h3>Sorry, unable to issue Car.</h3><p>We may have sortage of Cars. Kindly visit later.</p>");
	}
	out.println("</div>");  
 %>
 	
	<jsp:include page="footer.html"/>
<% 	
	out.close(); }
%>
</body>
</html>