<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if (session.getAttribute("user")== null){ 
	response.sendRedirect("login.jsp");
 }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
