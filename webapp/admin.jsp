<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%            	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 %>
 <% if (session.getAttribute("user")== null){ 
	response.sendRedirect("login.jsp");
 }
%>
<jsp:include page="adminheader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/admin.css">
</head>
<body>

</body>
</html>