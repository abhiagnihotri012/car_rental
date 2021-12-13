<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.List"%> 
    <%@ page import="dao.CarDao"%>
    <%@ page import="beans.IssueCarBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Issued Car</title>
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
	
		
    <%  out.println("<div class='container'>");
		
		List<IssueCarBean> list=CarDao.viewIssuedCars();
		
		out.println("<table class='table table-bordered table-striped'>");
		out.println("<tr><th>Car Number</th><th>Customer Id</th><th>Customer Name</th><th>Customer Mobile</th><th>Issued Date</th><th>Return Status</th></tr>");
		for(IssueCarBean bean:list){
			out.println("<tr><td>"+bean.getCallno()+"</td><td>"+bean.getCustomerid()+"</td><td>"+bean.getCustomername()+"</td><td>"+bean.getCustomermobile()+"</td><td>"+bean.getIssueddate()+"</td><td>"+bean.getReturnstatus()+"</td></tr>");
		}
		out.println("</table>");
		
		out.println("</div>");
	 %>	
		 <jsp:include page="footer.html"></jsp:include>
		
	<% 	out.close();
			}
      %>
</body>
</html>