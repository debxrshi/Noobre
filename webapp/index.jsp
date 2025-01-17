<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%            	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OneScan Home</title>
<link rel="stylesheet" href="css/index.css">

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
	<div class="body">
		<h2>
			Multi-vendor <br>Malware Scanning Platform.
		</h2>
		<h3>One-click analyze suspicious files with 72
			enterprise-grade security vendors.</h3>
	</div>
	<div class="main-wrapper">
		<form id="fileUploadForm" action="Scan"
			enctype="multipart/form-data" method="post">
			<input type="file" id="fileinput" onchange="fileUploadForm.submit()"
				name="file"> <label for="fileinput" id="fileupload">
				<div class="drag-area">
					<div class="icon">
						<i class="fas fa-cloud-upload-alt"></i>
					</div>
		</form>
		</label>
		<p id="btn-text">Upload &amp; Analyze</p>
	</div>
	</div>
</body>
</html>