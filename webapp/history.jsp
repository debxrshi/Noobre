<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.model.Scans, com.dao.*, com.model.*" %>

<% if (session.getAttribute("user")== null){ 
	response.sendRedirect("login.jsp");
 }
%>


<!DOCTYPE html>
<html>
<head>
<title>Your Scan</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Recent Scans</title>
<link rel="stylesheet" href="css/recen.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/166366233a.js"
	crossorigin="anonymous"></script>
<script src="js/rescan.js" type="text/javascript"></script>
<script src="js/del.js">
	
</script>
</head>
<body>
	<div class="navbar">
		<a href="#" class="logo">1-Scan</a>
		<nav>
			<ul class="links">
				<li><a href="index.jsp">HOME </a></li>
				<li><a href="admin.jsp">ADMIN</a></li>
				<li><a href="vendors.jsp">VENDOR LIST</a></li>
				<li><a href="scans.jsp">YOUR SCANS</a></li>
				<label class="icons"> <i class="fa-solid fa-bars"></i>
				</label>
			</ul>
		</nav>
	</div>
	<main class="table">
		<table>
			<thead>
				<tr>
					<th>File Name</th>
					<th>Uploaded By</th>
					<th>SHA-256</th>
					<th>Analysis</th>
					<th>Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<%
			List<Scans> scanList = ScanDAO.listScans();

				for(Scans scan : scanList) { 
			%>
				<tr>
            <td><%= scan.getFilename() %></td>
            <td><%= scan.getUploadedBy() %></td>
            <td><%= scan.getSha256() %></td>
            <td><%= scan.getAnalysis() %></td>
            <td><%= scan.getScanDate() %></td>
					<td><a href="#" class="rescan-link" style="color: blue;"><i
							class="fa-solid fa-up-right-from-square"></i> Rescan</a> <i
						class="fa-solid fa-slash fa-rotate-270 fa-xs"></i>
						<button onClick="deleteRow(this)">
							<i class="fas fa-trash"></i>
						</button></td>
				</tr>
				 <% } %>
			</tbody>
		</table>
	</main>
</body>
</html>