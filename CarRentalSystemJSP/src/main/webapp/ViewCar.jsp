<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="beans.CarBean"  import="java.util.List" %>
    <%@ page import="dao.CarDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Cars</title>
<link rel='stylesheet' href='bootstrap.min.css'/>1
</head>
<body>

      <% 
			if(session.getAttribute("user")==null){
				session.invalidate();
				response.sendRedirect("index.html");
			}else{
		%>	
		
         <jsp:include page="navowner.html"></jsp:include>
		
		
	<%	out.println("<div class='container'>");
	
	List<CarBean> list=CarDao.view();
	
	out.println("<table class='table table-bordered table-striped'>");
	out.println("<tr><th>Car Number</th><th>Car Name</th><th>Company</th><th>Condition</th><th>Quantity</th><th>Issued</th><th>Delete</th></tr>");
	for(CarBean bean:list){
		out.println("<tr><td>"+bean.getCallno()+"</td><td>"+bean.getCarname()+"</td><td>"+bean.getCompany()+"</td><td>"+bean.getCondition()+"</td><td>"+bean.getQuantity()+"</td><td>"+bean.getIssued()+"</td><td><a href='DeleteCar.jsp?callno="+bean.getCallno()+"'>Delete</a></td></tr>");
	}
	out.println("</table>");
	
	out.println("</div>");
	
	%>	
		 <jsp:include page="footer.html"></jsp:include>
		
	<%	out.close();
			}
      %>
</body>
</html>