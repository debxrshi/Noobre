<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.model.Scans, com.model.User, com.dao.*" %>

<% 
User user = (User) session.getAttribute("user");
if (user == null) {
    response.sendRedirect("login.jsp");
    return; 
}
String name = user.getName();
List<Scans> scanList = ScanDAO.listScans(name);

%>


<!DOCTYPE html>
<html>
<head>
<title>Your Scan</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Recent Scans</title>
<link rel="stylesheet" href="css/recent.css">
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
	
</script>
</head>
<body>
	<div class="navbar">
		<a href="index.jsp" class="logo">OneScan</a>
		<nav>
			<ul class="links">
				<li><a href="index.jsp">HOME </a></li>
				<li><a href="admin.jsp">ADMIN</a></li>
				<li><a href="vendors.jsp">VENDOR LIST</a></li>
				<li><a href="scans.jsp">YOUR SCANS</a></li>
  <% 
            if (session.getAttribute("user") != null) { 
            %>
                <li>
<form action="logout" method="post">
                        <button class="logout-btn" type="submit" cursor: pointer;">
<i class="fa-solid fa-arrow-right-from-bracket fa-lg"></i>                        
						</button>
                	</form>
                </li>
                <label class="icons"> <i class="fa-solid fa-bars"></i>
				</label>
            <% 
            } else { 
            %>
                <li><a href="login.jsp">SIGN IN</a></li>
            <% 
            } 
            %>

			</ul>
		</nav>
		</div>
	<main class="table" style="overflow-x:auto;">
		<table>
			<thead>
				<tr>
					<th>File Name</th>
					<th>SHA-256</th>
					<th>Analysis</th>
					<th>Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<%
				for(Scans scan : scanList) { 
			%>
				<tr>
            <td><%= scan.getFilename() %></td>
            <td><%= scan.getSha256() %></td>
            <td><%= scan.getAnalysis() %></td>
            <td><%= scan.getScanDate() %></td>
					<td><a href="analysis.jsp?hash=<%=scan.getSha256()%>" class="rescan-link" style="color: blue;"><i
							class="fa-solid fa-up-right-from-square"></i> Rescan</a></td>
				</tr>
				 <% } %>
			</tbody>
		</table>
	</main>
</body>
</html>